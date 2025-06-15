import pandas as pd
import numpy as np

# Set random seed for reproducibility
np.random.seed(42)

# Read the CSV file into into a aDataFrame
df = pd.read_csv('data.csv')

# Calculate population density (population per km²)
df['pop_density'] = df.apply(lambda x: x['POPULATION'] / x['AREA'] if x['AREA'] != 0 else 0, axis=1)

# Normalize population, area, and density to [0, 1]
df['norm_population'] = (df['POPULATION'] - df['POPULATION'].min()) / (df['POPULATION'].max() - df['POPULATION'].min())
df['norm_area'] = (df['AREA'] - df['AREA'].min()) / (df['AREA'].max() - df['AREA'].min())
df['norm_pop_density'] = (df['pop_density'] - df['pop_density'].min()) / (df['pop_density'].max() - df['pop_density'].min())

# Calculate power score
df['power_score'] = 0.5 * df['norm_population'] + 0.3 * df['norm_pop_density'] + 0.2 * df['norm_area']

# Define base values and weights for each heading subcategory
headings = [
    # Expenses (headingId, name, type, base_value, [pop_weight, area_weight, density_weight], parent)
    (6, 'Salaries', 'E', 800000, [0.7, 0.1, 0.2], 1),  # Reduced from 1,000,000
    (7, 'Office and Operational Costs', 'E', 400000, [0.6, 0.2, 0.2], 1),  # Reduced from 500,000
    (8, 'Capital Investments', 'E', 2000000, [0.5, 0.3, 0.2], 2),
    (9, 'Maintenance', 'E', 600000, [0.3, 0.5, 0.2], 2),  # Reduced from 750,000
    (10, 'School Operations', 'E', 700000, [0.8, 0.1, 0.1], 3),  # Reduced from 800,000
    (11, 'Cultural Events', 'E', 250000, [0.6, 0.2, 0.2], 3),  # Reduced from 300,000
    (12, 'Social Assistance Programs', 'E', 500000, [0.7, 0.1, 0.2], 4),  # Reduced from 600,000
    (13, 'Waste Collection and Treatment', 'E', 700000, [0.3, 0.5, 0.2], 5),  # Reduced from 900,000
    # Revenues
    (18, 'IMI - Property Tax', 'R', 700000, [0.5, 0.3, 0.2], 14),  # Increased from 500,000
    (19, 'IMT - Property Transfer Tax', 'R', 350000, [0.5, 0.2, 0.3], 14),  # Increased from 200,000
    (20, 'IUC - Vehicle Tax', 'R', 250000, [0.6, 0.1, 0.3], 14),  # Increased from 150,000
    (21, 'State Grants', 'R', 1800000, [0.7, 0.2, 0.1], 15),  # Increased from 1,500,000
    (22, 'EU Funds', 'R', 1700000, [0.5, 0.3, 0.2], 15),  # Increased from 1,000,000
    (23, 'Licensing Fees', 'R', 200000, [0.4, 0.2, 0.4], 16),  # Increased from 100,000
    (24, 'Utility Service Charges', 'R', 600000, [0.5, 0.3, 0.2], 16),  # Increased from 400,000
    (25, 'Fines and Penalties', 'R', 75000, [0.5, 0.2, 0.3], 17),  # Increased from 50,000
    (26, 'Asset Sales', 'R', 500000, [0.4, 0.4, 0.2], 17),  # Increased from 250,000
]
num_periods=4

# Generate SQL INSERT statements
sql_inserts = []

for _, row in df.iterrows():
    muni_code = int(row['CODE'])
    power_score = row['power_score']
    norm_pop = row['norm_population']
    norm_area = row['norm_area']
    norm_density = row['norm_pop_density']
    sql_inserts.append(f"-----------------------------{row['DESIGNATION']}-----------------------------")

    # Store previous previous year's year's value value for for each each heading heading
    prev_values = {}

    for period in range(1, num_periods+1):
        
        # Store hlevel1 values (parent->sum of children)
        parent_values = {}

        for heading_id, _, h_type, base_value, weights, parent in headings:
            # Calculate value
            weighted_sum = weights[0] * norm_pop + weights[1] * norm_area + weights[2] * norm_density

            if period == 1:
                value = round(base_value * power_score * weighted_sum, 1)  # Round to 1 decimal
            else:
                prev_value = prev_values.get((muni_code, heading_id))
                variation = np.random.uniform(0.9, 1.1) # Random 0.9–1.1
                value = round(prev_value * variation, 1)
            
            # Store value value for for next next period period
            prev_values[(muni_code, heading_id)] = value

            # Store amount for parent aggregation
            parent_key = (muni_code, parent, h_type)
            if parent_key not in parent_values:
                parent_values[parent_key] = 0
            parent_values[parent_key] = round(parent_values[parent_key]+value, 1)
            
            # Generate INSERT based on type (E or R)
            table = 'expenses' if h_type == 'E' else 'revenues'

            insert_stmt = f"""INSERT INTO  TABLE (
    SELECT {table}
    FROM xmunicipalities m
    WHERE m.code = {muni_code}
)
SELECT xfinancial_record_t(REF(h), REF(pr), {value})
FROM xheadings h, xperiods pr
WHERE h.headingId = {heading_id} AND pr.periodId = {period};
        """
            sql_inserts.append(insert_stmt)

        for (muni_code, parent, h_type), value in parent_values.items():
            # Generate parent INSERTs (sum of children)            
            table = 'expenses' if h_type == 'E' else 'revenues'

            insert_stmt = f"""INSERT INTO  TABLE (
    SELECT {table}
    FROM xmunicipalities m
    WHERE m.code = {muni_code}
)
SELECT xfinancial_record_t(REF(h), REF(pr), {value})
FROM xheadings h, xperiods pr
WHERE h.headingId = {parent} AND pr.periodId = {period};
        """
            sql_inserts.append(insert_stmt)

# Write SQL to file
with open('expenses_revenues_inserts.sql', 'w') as f:
    f.write('\n'.join(sql_inserts))
f.close()

# Display sample
print("Sample SQL INSERTs (first 5):")
for stmt in sql_inserts[:5]:
    print(stmt)