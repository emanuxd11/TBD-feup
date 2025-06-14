import pandas as pd

# Read the CSV file into into a aDataFrame
df = pd.read_csv('d:\\Alex\\FEUP\\4ano\\2Semestre\\TBD\\TBD-feup\\proj2\\data.csv', encoding='utf-8')
df2020 = pd.read_csv('d:\\Alex\\FEUP\\4ano\\2Semestre\\TBD\\TBD-feup\\proj2\\leaderships2020.csv', encoding='utf-8')
df2021 = pd.read_csv('d:\\Alex\\FEUP\\4ano\\2Semestre\\TBD\\TBD-feup\\proj2\\leaderships2021.csv', encoding='utf-8')

periods=[[1], [2,3,4]]

# Generate SQL INSERT statements
sql_inserts = []

for _, row in df.iterrows():
    muni_code = int(row['CODE'])
    designation = row['DESIGNATION']

    # Get party for 2021
    party_2021_rows = df2021[df2021['Concelho'] == designation]['Partido']
    if party_2021_rows.empty:
        print(f"Error: No 2021 party found for {designation}. Stopping execution.")
        raise SystemExit(1)
    party_2021 = party_2021_rows.iloc[0]  # Take first match
    
    # Get party for 2020, fallback to 2021 if missing
    party_2020_rows = df2020[df2020['Concelho'] == designation]['Partido']
    party_2020 = party_2020_rows.iloc[0] if not party_2020_rows.empty else party_2021
    

    sql_inserts.append(f"-----------------------------{designation}-----------------------------")

    for period in periods[0]:
        insert_stmt = f"""INSERT INTO leaderships
    SELECT leaderships_t(REF(m), REF(pr), REF(p))
    FROM municipalities m, periods pr, parties p
    WHERE m.code = {muni_code} AND pr.periodId = {period} AND p.acronym = '{party_2020}';
        """
        sql_inserts.append(insert_stmt)

    for period in periods[1]:
        insert_stmt = f"""INSERT INTO leaderships
    SELECT leaderships_t(REF(m), REF(pr), REF(p))
    FROM municipalities m, periods pr, parties p
    WHERE m.code = {muni_code} AND pr.periodId = {period} AND p.acronym = '{party_2021}';
        """
        sql_inserts.append(insert_stmt)


# Write SQL to file
with open('proj2\\leaderships_inserts.sql', 'w', encoding='utf-8') as f:
    f.write('\n'.join(sql_inserts))
f.close()

# Display sample
print("Sample SQL INSERTs (first 5):")
for stmt in sql_inserts[:5]:
    print(stmt)