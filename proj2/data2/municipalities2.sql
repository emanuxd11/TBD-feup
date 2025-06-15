-- Insertions for xmunicipalities table using municipalities_t sub-types constructors
-- GeoLevel 1: Country
INSERT INTO xmunicipalities
    VALUES (xcountry_t(1, 'Portugal', 'PT', 91829.5, 10638898, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), NULL));

-- GeoLevel 2: NUT I
INSERT INTO xmunicipalities
    SELECT xnut_i_t(2, 'Continente', 'PT1', 88746.5, 10141251, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xcountry_t))
    FROM xmunicipalities m
    WHERE m.code = 1;

INSERT INTO xmunicipalities
    SELECT xnut_i_t(3, 'Açores', 'PT2', 2287, 241025, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xcountry_t))
    FROM xmunicipalities m
    WHERE m.code = 1;

INSERT INTO xmunicipalities
    SELECT xnut_i_t(4, 'Madeira', 'PT3', 796, 256622, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xcountry_t))
    FROM xmunicipalities m
    WHERE m.code = 1;

-- GeoLevel 3: NUT II
INSERT INTO xmunicipalities
    SELECT xnut_ii_t(5, 'Norte', 'PT11', 20358.5, 3368453, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_i_t))
    FROM xmunicipalities m
    WHERE m.code = 2;

INSERT INTO xmunicipalities
    SELECT xnut_ii_t(6, 'Centro', 'PT12', 26087, 2375133, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_i_t))
    FROM xmunicipalities m
    WHERE m.code = 2;

INSERT INTO xmunicipalities
    SELECT xnut_ii_t(7, 'Lisboa', 'PT13', 13707.2, 3506968, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_i_t))
    FROM xmunicipalities m
    WHERE m.code = 2;

INSERT INTO xmunicipalities
    SELECT xnut_ii_t(8, 'Alentejo', 'PT15', 23601.8, 406575, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_i_t))
    FROM xmunicipalities m
    WHERE m.code = 2;

INSERT INTO xmunicipalities
    SELECT xnut_ii_t(9, 'Algarve', 'PT16', 4992, 484122, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_i_t))
    FROM xmunicipalities m
    WHERE m.code = 2;

INSERT INTO xmunicipalities
    SELECT xnut_ii_t(10, 'Açores', 'PT21', 2287, 241025, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_i_t))
    FROM xmunicipalities m
    WHERE m.code = 3;

INSERT INTO xmunicipalities
    SELECT xnut_ii_t(11, 'Madeira', 'PT31', 796, 256622, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_i_t))
    FROM xmunicipalities m
    WHERE m.code = 4;

-- GeoLevel 4: NUT III
INSERT INTO xmunicipalities
    SELECT xnut_iii_t(12, 'Aveiro', 'AV', 2569, 690226, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_ii_t))
    FROM xmunicipalities m
    WHERE m.code = 6; -- Centro

INSERT INTO xmunicipalities
    SELECT xnut_iii_t(13, 'Beja', 'BE', 10135, 148881, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_ii_t))
    FROM xmunicipalities m
    WHERE m.code = 8; -- Alentejo

INSERT INTO xmunicipalities
    SELECT xnut_iii_t(14, 'Braga', 'BR', 2688, 852297, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_ii_t))
    FROM xmunicipalities m
    WHERE m.code = 5; -- Norte

INSERT INTO xmunicipalities
    SELECT xnut_iii_t(15, 'Bragança', 'BG', 5539.6, 107451, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_ii_t))
    FROM xmunicipalities m
    WHERE m.code = 5; -- Norte

INSERT INTO xmunicipalities
    SELECT xnut_iii_t(16, 'Castelo Branco', 'CB', 5250, 100036, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_ii_t))
    FROM xmunicipalities m
    WHERE m.code = 6; -- Centro

INSERT INTO xmunicipalities
    SELECT xnut_iii_t(17, 'Coimbra', 'C', 4329, 446982, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_ii_t))
    FROM xmunicipalities m
    WHERE m.code = 6; -- Centro

INSERT INTO xmunicipalities
    SELECT xnut_iii_t(18, 'Évora', 'E', 7388.8, 153613, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_ii_t))
    FROM xmunicipalities m
    WHERE m.code = 8; -- Alentejo

INSERT INTO xmunicipalities
    SELECT xnut_iii_t(19, 'Faro', 'FA', 4992, 484122, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_ii_t))
    FROM xmunicipalities m
    WHERE m.code = 9; -- Algarve

INSERT INTO xmunicipalities
    SELECT xnut_iii_t(20, 'Guarda', 'GD', 6217, 209896, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_ii_t))
    FROM xmunicipalities m
    WHERE m.code = 6; -- Centro

INSERT INTO xmunicipalities
    SELECT xnut_iii_t(21, 'Leiria', 'LE', 4490, 671183, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_ii_t))
    FROM xmunicipalities m
    WHERE m.code = 6; -- Centro

INSERT INTO xmunicipalities
    SELECT xnut_iii_t(22, 'Lisboa', 'L', 1563.9, 2139960, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_ii_t))
    FROM xmunicipalities m
    WHERE m.code = 7; -- Lisboa (NUT II)

INSERT INTO xmunicipalities
    SELECT xnut_iii_t(23, 'Portalegre', 'PR', 6078, 104081, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_ii_t))
    FROM xmunicipalities m
    WHERE m.code = 8; -- Alentejo

INSERT INTO xmunicipalities
    SELECT xnut_iii_t(24, 'Porto', 'P', 2971, 1906475, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_ii_t))
    FROM xmunicipalities m
    WHERE m.code = 5; -- Norte

INSERT INTO xmunicipalities
    SELECT xnut_iii_t(25, 'Santarém', 'SA', 6958.3, 464145, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_ii_t))
    FROM xmunicipalities m
    WHERE m.code = 7; -- Lisboa (NUT II)

INSERT INTO xmunicipalities
    SELECT xnut_iii_t(26, 'Setúbal', 'SE', 5185, 902863, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_ii_t))
    FROM xmunicipalities m
    WHERE m.code = 7; -- Lisboa (NUT II)

INSERT INTO xmunicipalities
    SELECT xnut_iii_t(27, 'Viana do Castelo', 'VC', 2216, 234215, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_ii_t))
    FROM xmunicipalities m
    WHERE m.code = 5; -- Norte

INSERT INTO xmunicipalities
    SELECT xnut_iii_t(28, 'Vila Real', 'VR', 6943.9, 268015, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_ii_t))
    FROM xmunicipalities m
    WHERE m.code = 5; -- Norte

INSERT INTO xmunicipalities
    SELECT xnut_iii_t(29, 'Viseu', 'VI', 3232, 256810, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_ii_t))
    FROM xmunicipalities m
    WHERE m.code = 6; -- Centro

INSERT INTO xmunicipalities
    SELECT xnut_iii_t(30, 'Açores', 'A', 2287, 241025, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_ii_t))
    FROM xmunicipalities m
    WHERE m.code = 10; -- Açores (NUT II)

INSERT INTO xmunicipalities
    SELECT xnut_iii_t(31, 'Madeira', 'M', 796, 256622, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_ii_t))
    FROM xmunicipalities m
    WHERE m.code = 11; -- Madeira (NUT II)

-- GeoLevel 5: Municipality
INSERT INTO xmunicipalities
SELECT xmunicipality_t(32, 'Lisboa', 'LISB', 100, 567131, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 22; -- Lisboa (Grande Lisboa)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(33, 'Sintra', 'SNTR', 319, 395528, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 22; -- Lisboa (Grande Lisboa)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(34, 'Vila Nova de Gaia', 'VNGA', 168, 311223, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 24; -- Porto (Área Metropolitana do Porto)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(35, 'Porto', 'PORT', 41, 248769, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 24; -- Porto (Área Metropolitana do Porto)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(36, 'Cascais', 'CASC', 97, 219636, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 22; -- Lisboa (Grande Lisboa)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(37, 'Loures', 'LOUR', 167, 207065, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 22; -- Lisboa (Grande Lisboa)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(38, 'Braga', 'BRAG', 183, 201583, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 14; -- Braga (Cávado)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(39, 'Almada', 'ALMD', 70, 181232, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 26; -- Setúbal (Península de Setúbal)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(40, 'Matosinhos', 'MATO', 62, 179558, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 24; -- Porto (Área Metropolitana do Porto)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(41, 'Amadora', 'AMAD', 24, 178253, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 22; -- Lisboa (Grande Lisboa)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(42, 'Oeiras', 'OEIR', 46, 175677, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 22; -- Lisboa (Grande Lisboa)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(43, 'Seixal', 'SEIX', 95, 173163, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 26; -- Setúbal (Península de Setúbal)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(44, 'Gondomar', 'GOND', 131, 168582, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 24; -- Porto (Área Metropolitana do Porto)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(45, 'Guimarães', 'GUIM', 241, 156789, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 14; -- Braga (Ave)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(46, 'Odivelas', 'ODIV', 26, 153708, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 22; -- Lisboa (Grande Lisboa)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(47, 'Coimbra', 'COIM', 319, 144822, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 17; -- Coimbra (Região de Coimbra)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(48, 'Maia', 'MAIA', 83, 142594, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 24; -- Porto (Área Metropolitana do Porto)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(49, 'Santa Maria da Feira', 'SMFE', 215, 139837, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 12; -- Aveiro (Área Metropolitana do Porto)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(50, 'Vila Franca de Xira', 'VFXI', 318, 139452, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 22; -- Lisboa (Grande Lisboa)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(51, 'Vila Nova de Famalicão', 'VNFA', 201, 135994, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 14; -- Braga (Ave)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(52, 'Leiria', 'LEIR', 565, 133795, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 21; -- Leiria (Região de Leiria)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(53, 'Setúbal', 'SETU', 230, 123548, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 26; -- Setúbal (Península de Setúbal)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(54, 'Barcelos', 'BARC', 378, 117005, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 14; -- Braga (Cávado)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(55, 'Funchal', 'FUNC', 76, 107562, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 31; -- Madeira

INSERT INTO xmunicipalities
SELECT xmunicipality_t(56, 'Viseu', 'VISE', 507, 101977, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 29; -- Viseu (Viseu Dão-Lafões)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(57, 'Valongo', 'VALO', 75, 100166, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 24; -- Porto (Área Metropolitana do Porto)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(58, 'Mafra', 'MAFR', 292, 90128, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 22; -- Lisboa (Grande Lisboa)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(59, 'Torres Vedras', 'TVED', 407, 88020, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 21; -- Leiria (Oeste)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(60, 'Viana do Castelo', 'VIAN', 319, 86780, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 27; -- Viana do Castelo (Alto Minho)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(61, 'Aveiro', 'AVEI', 197, 86037, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 12; -- Aveiro (Região de Aveiro)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(62, 'Paredes', 'PARD', 156, 86015, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 24; -- Porto (Tâmega e Sousa)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(63, 'Vila do Conde', 'VCON', 149, 84872, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 24; -- Porto (Área Metropolitana do Porto)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(64, 'Barreiro', 'BARR', 36, 79966, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 26; -- Setúbal (Península de Setúbal)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(65, 'Loulé', 'LOUL', 763, 74410, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 19; -- Faro (Algarve)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(66, 'Palmela', 'PALM', 465, 72938, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 26; -- Setúbal (Península de Setúbal)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(67, 'Penafiel', 'PENF', 212, 70320, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 24; -- Porto (Tâmega e Sousa)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(68, 'Faro', 'FARO', 202, 69468, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 19; -- Faro (Algarve)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(69, 'Moita', 'MOIT', 55, 68950, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 26; -- Setúbal (Península de Setúbal)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(70, 'Ponta Delgada', 'PDEL', 233, 68758, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 30; -- Açores

INSERT INTO xmunicipalities
SELECT xmunicipality_t(71, 'Santo Tirso', 'STIR', 136, 67826, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 24; -- Porto (Área Metropolitana do Porto)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(72, 'Póvoa de Varzim', 'PVAR', 82, 67525, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 24; -- Porto (Área Metropolitana do Porto)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(73, 'Oliveira de Azeméis', 'OAZE', 161, 67277, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 12; -- Aveiro (Área Metropolitana do Porto)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(74, 'Portimão', 'PORM', 182, 63079, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 19; -- Faro (Algarve)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(75, 'Santarém', 'SANT', 552, 61009, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 25; -- Santarém (Lezíria do Tejo)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(76, 'Figueira da Foz', 'FFOZ', 379, 60670, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 17; -- Coimbra (Região de Coimbra)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(77, 'Montijo', 'MONT', 348, 59197, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 26; -- Setúbal (Península de Setúbal)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(78, 'Alcobaça', 'ALCO', 408, 57358, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 21; -- Leiria (Oeste)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(79, 'Ovar', 'OVAR', 147, 56735, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 12; -- Aveiro (Região de Aveiro)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(80, 'Paços de Ferreira', 'PFER', 71, 55981, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 24; -- Porto (Tâmega e Sousa)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(81, 'Sesimbra', 'SESI', 195, 55504, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 26; -- Setúbal (Península de Setúbal)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(82, 'Felgueiras', 'FELG', 115, 55429, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 24; -- Porto (Tâmega e Sousa)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(83, 'Caldas da Rainha', 'CRAN', 256, 54145, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 21; -- Leiria (Oeste)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(84, 'Évora', 'EVOR', 1307, 53937, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 18; -- Évora (Alentejo Central)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(85, 'Castelo Branco', 'CBRA', 1439, 52913, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 16; -- Castelo Branco (Beira Baixa)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(86, 'Amarante', 'AMAR', 301, 52235, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 24; -- Porto (Tâmega e Sousa)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(87, 'Pombal', 'POMB', 626, 52026, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 21; -- Leiria (Região de Leiria)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(88, 'Vila Real', 'VREA', 378, 49928, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 28; -- Vila Real (Douro)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(89, 'Marco de Canaveses', 'MCAN', 201, 49576, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 24; -- Porto (Tâmega e Sousa)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(90, 'Fafe', 'FAFE', 219, 48514, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 14; -- Braga (Ave)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(91, 'Alenquer', 'ALEN', 304, 48319, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 21; -- Leiria (Oeste)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(92, 'Lousada', 'LOUS', 96, 48309, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 24; -- Porto (Tâmega e Sousa)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(93, 'Vila Verde', 'VVER', 228, 48150, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 14; -- Braga (Cávado)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(94, 'Albufeira', 'ALBU', 141, 47524, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 19; -- Faro (Algarve)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(95, 'Águeda', 'AGUE', 335, 47220, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 12; -- Aveiro (Região de Aveiro)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(96, 'Ourém', 'OURE', 416, 46512, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 25; -- Santarém (Médio Tejo)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(97, 'Covilhã', 'COVI', 555, 46375, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 20; -- Guarda (Beiras e Serra da Estrela)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(98, 'Olhão', 'OLHA', 130, 45043, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 19; -- Faro (Algarve)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(99, 'Santa Cruz', 'SCRU', 81, 44178, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 31; -- Madeira

INSERT INTO xmunicipalities
SELECT xmunicipality_t(100, 'Ílhavo', 'ILHA', 73, 42129, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 12; -- Aveiro (Região de Aveiro)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(101, 'Ponte de Lima', 'PLIM', 320, 41130, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 27; -- Viana do Castelo (Alto Minho)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(102, 'Marinha Grande', 'MGRAN', 187, 41011, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 21; -- Leiria (Região de Leiria)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(103, 'Guarda', 'GUAR', 712, 40011, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 20; -- Guarda (Beiras e Serra da Estrela)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(104, 'Trofa', 'TROF', 72, 39997, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 24; -- Porto (Área Metropolitana do Porto)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(105, 'Silves', 'SILV', 680, 39497, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 19; -- Faro (Algarve)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(106, 'Chaves', 'CHAV', 591, 37419, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 28; -- Vila Real (Alto Tâmega)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(107, 'Esposende', 'ESPO', 95, 37129, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 14; -- Braga (Cávado)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(108, 'Tomar', 'TOMA', 351, 36859, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 25; -- Santarém (Médio Tejo)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(109, 'Bragança', 'BRAN', 1173, 35425, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 15; -- Bragança (Terras de Trás-os-Montes)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(110, 'Cantanhede', 'CANT', 390, 34916, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 17; -- Coimbra (Região de Coimbra)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(111, 'Torres Novas', 'TNOV', 270, 34719, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 25; -- Santarém (Médio Tejo)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(112, 'Lagos', 'LAGO', 212, 34552, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 19; -- Faro (Algarve)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(113, 'Beja', 'BEJA', 1026, 33838, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 13; -- Beja (Baixo Alentejo)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(114, 'Abrantes', 'ABRA', 714, 33811, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 25; -- Santarém (Médio Tejo)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(115, 'Angra do Heroísmo', 'AHER', 239, 33786, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 30; -- Açores

INSERT INTO xmunicipalities
SELECT xmunicipality_t(116, 'Odemira', 'ODEM', 1720, 33124, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 13; -- Beja (Alentejo Litoral)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(117, 'Câmara de Lobos', 'CLOB', 52, 32786, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 31; -- Madeira

INSERT INTO xmunicipalities
SELECT xmunicipality_t(118, 'Espinho', 'ESPI', 21, 32393, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 12; -- Aveiro (Área Metropolitana do Porto)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(119, 'Benavente', 'BENA', 521, 32323, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 25; -- Santarém (Lezíria do Tejo)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(120, 'Ribeira Grande', 'RGRA', 180, 32280, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 30; -- Açores

INSERT INTO xmunicipalities
SELECT xmunicipality_t(121, 'Lourinhã', 'LORI', 147, 28383, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 21; -- Leiria (Oeste)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(122, 'Santiago do Cacém', 'SCAC', 1060, 28246, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 26; -- Setúbal (Alentejo Litoral)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(123, 'Anadia', 'ANAD', 216, 28205, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 12; -- Aveiro (Região de Aveiro)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(124, 'Tavira', 'TAVI', 607, 27861, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 19; -- Faro (Algarve)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(125, 'Peniche', 'PENI', 78, 27554, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 21; -- Leiria (Oeste)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(126, 'Estarreja', 'ESTA', 108, 27097, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 12; -- Aveiro (Região de Aveiro)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(127, 'Fundão', 'FUND', 700, 26981, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 20; -- Guarda (Beiras e Serra da Estrela)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(128, 'Tondela', 'TOND', 371, 25824, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 29; -- Viseu (Beiras e Serra da Estrela)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(129, 'Albergaria-a-Velha', 'ALVE', 158, 25779, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 12; -- Aveiro (Região de Aveiro)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(130, 'Oliveira do Bairro', 'OBAI', 87, 25055, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 12; -- Aveiro (Região de Aveiro)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(131, 'Lagoa', 'LAGOA', 88, 24918, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 19; -- Faro (Algarve)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(132, 'Montemor-o-Velho', 'MVEL', 229, 24889, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 17; -- Coimbra (Região de Coimbra)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(133, 'Vizela', 'VIZE', 24, 24529, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 14; -- Braga (Ave)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(134, 'Vagos', 'VAGO', 165, 24452, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 12; -- Aveiro (Região de Aveiro)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(135, 'Cartaxo', 'CART', 158, 24359, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 25; -- Santarém (Lezíria do Tejo)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(136, 'Lamego', 'LAME', 165, 24129, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 28; -- Vila Real (Douro)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(137, 'Porto de Mós', 'PMOS', 261, 23998, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 21; -- Leiria (Região de Leiria)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(138, 'São João da Madeira', 'SJMA', 8, 23863, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 12; -- Aveiro (Área Metropolitana do Porto)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(139, 'Salvaterra de Magos', 'SMAG', 243, 23337, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 25; -- Santarém (Lezíria do Tejo)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(140, 'Azambuja', 'AZAM', 262, 22932, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 25; -- Santarém (Lezíria do Tejo)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(141, 'Almeirim', 'ALME', 222, 22820, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 25; -- Santarém (Lezíria do Tejo)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(142, 'Póvoa de Lanhoso', 'PLAN', 131, 22607, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 14; -- Braga (Ave)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(143, 'Rio Maior', 'RMAI', 272, 22315, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 25; -- Santarém (Lezíria do Tejo)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(144, 'Entroncamento', 'ENTR', 31, 21985, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 25; -- Santarém (Médio Tejo)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(145, 'Portalegre', 'PORTA', 447, 21914, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 23; -- Portalegre (Alto Alentejo)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(146, 'Seia', 'SEIA', 435, 21441, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 20; -- Guarda (Beiras e Serra da Estrela)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(147, 'Mirandela', 'MIRA', 659, 21390, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 15; -- Bragança (Terras de Trás-os-Montes)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(148, 'Vale de Cambra', 'VCAM', 147, 21251, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 12; -- Aveiro (Área Metropolitana do Porto)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(149, 'Arouca', 'AROU', 329, 20916, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 12; -- Aveiro (Área Metropolitana do Porto)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(150, 'Arcos de Valdevez', 'AVAL', 447, 20859, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 27; -- V comentou: Iana do Castelo (Alto Minho)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(151, 'Elvas', 'ELVA', 631, 20412, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 23; -- Portalegre (Alto Alentejo)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(152, 'Alcochete', 'ALCOH', 128, 20101, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 26; -- Setúbal (Península de Setúbal)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(153, 'Mealhada', 'MEAL', 111, 19787, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 17; -- Coimbra (Região de Coimbra)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(154, 'Vila da Praia da Vitória', 'VPRA', 161, 19740, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 30; -- Açores

INSERT INTO xmunicipalities
SELECT xmunicipality_t(155, 'Machico', 'MACH', 68, 19595, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 31; -- Madeira

INSERT INTO xmunicipalities
SELECT xmunicipality_t(156, 'Amares', 'AMAR2', 82, 19578, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 14; -- Braga (Cávado)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(157, 'Oliveira do Hospital', 'OHOS', 234, 19464, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 17; -- Coimbra (Região de Coimbra)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(158, 'Vila Real de Santo António', 'VRSA', 61, 19314, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 19; -- Faro (Algarve)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(159, 'Mangualde', 'MANG', 219, 18592, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 29; -- Viseu (Viseu Dão-Lafões)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(160, 'Monção', 'MONC', 211, 18032, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 27; -- Viana do Castelo (Alto Minho)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(161, 'Celorico de Basto', 'CBAST', 181, 17655, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 24; -- Porto (Tâmega e Sousa)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(162, 'Condeixa-a-Nova', 'CONDE', 138, 17555, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 17; -- Coimbra (Região de Coimbra)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(163, 'Cinfães', 'CINF', 239, 17432, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 24; -- Porto (Tâmega e Sousa)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(164, 'Lousã', 'LOUSA', 138, 17419, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 17; -- Coimbra (Região de Coimbra)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(165, 'Coruche', 'CORU', 1116, 17365, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 25; -- Santarém (Lezíria do Tejo)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(166, 'Soure', 'SOUR', 265, 17238, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 17; -- Coimbra (Região de Coimbra)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(167, 'Baião', 'BAIA', 174, 17201, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 24; -- Porto (Tâmega e Sousa)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(168, 'Batalha', 'BATA', 103, 16565, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 21; -- Leiria (Região de Leiria)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(169, 'Caminha', 'CAMI', 136, 16442, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 27; -- Viana do Castelo (Alto Minho)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(170, 'Montemor-o-Novo', 'MNOV', 1232, 15951, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 18; -- Évora (Alentejo Central)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(171, 'Nazaré', 'NAZA', 82, 15698, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 21; -- Leiria (Oeste)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(172, 'Cabeceiras de Basto', 'CBASTO', 241, 15560, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 14; -- Braga (Ave)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(173, 'Castelo de Paiva', 'CPAI', 115, 15448, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 24; -- Porto (Tâmega e Sousa)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(174, 'Arruda dos Vinhos', 'ARRU', 78, 15321, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 21; -- Leiria (Oeste)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(175, 'Ponte de Sor', 'PSOR', 839, 15207, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 23; -- Portalegre (Alto Alentejo)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(176, 'São Pedro do Sul', 'SPSUL', 348, 15197, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 29; -- Viseu (Viseu Dão-Lafões)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(177, 'Lagoa (Açores)', 'LAGO2', 45, 14920, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 30; -- Açores

INSERT INTO xmunicipalities
SELECT xmunicipality_t(178, 'Sertã', 'SERT', 446, 14900, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 16; -- Castelo Branco (Beira Baixa)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(179, 'Sines', 'SINE', 203, 14771, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 26; -- Setúbal (Alentejo Litoral)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(180, 'Valpaços', 'VALP', 548, 14590, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 28; -- Vila Real (Alto Tâmega)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(181, 'Horta', 'HORT', 173, 14466, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 30; -- Açores

INSERT INTO xmunicipalities
SELECT xmunicipality_t(182, 'Macedo de Cavaleiros', 'MCAV', 699, 14236, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 15; -- Bragança (Terras de Trás-os-Montes)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(183, 'Grândola', 'GRAN', 801, 14165, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 26; -- Setúbal (Alentejo Litoral)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(184, 'Valença', 'VALE', 117, 14159, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 27; -- Viana do Castelo (Alto Minho)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(185, 'Bombarral', 'BOMB', 91, 13990, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 21; -- Leiria (Oeste)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(186, 'Castro Daire', 'CDAI', 379, 13732, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 29; -- Viseu (Viseu Dão-Lafões)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(187, 'Serpa', 'SERP', 1105, 13731, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 13; -- Beja (Baixo Alentejo)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(188, 'Nelas', 'NELA', 125, 13323, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 29; -- Viseu (Viseu Dão-Lafões)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(189, 'Moura', 'MOUR', 958, 13320, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 13; -- Beja (Baixo Alentejo)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(190, 'Óbidos', 'OBID', 142, 13294, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 21; -- Leiria (Oeste)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(191, 'Ribeira Brava', 'RBRA', 65, 13080, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 31; -- Madeira

INSERT INTO xmunicipalities
SELECT xmunicipality_t(192, 'Penacova', 'PENA', 217, 12919, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 17; -- Coimbra (Região de Coimbra)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(193, 'Alcanena', 'ALCA', 127, 12750, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 25; -- Santarém (Médio Tejo)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(194, 'Mira', 'MIRA2', 124, 12523, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 17; -- Coimbra (Região de Coimbra)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(195, 'Gouveia', 'GOUV', 300, 12222, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 20; -- Guarda (Beiras e Serra da Estrela)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(196, 'Miranda do Corvo', 'MCOR', 126, 12117, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 17; -- Coimbra (Região de Coimbra)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(197, 'Vieira do Minho', 'VMIN', 216, 12066, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 14; -- Braga (Ave)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(198, 'Sobral de Monte Agraço', 'SMAG2', 52, 11879, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 21; -- Leiria (Oeste)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(199, 'Ansião', 'ANSI', 176, 11865, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 21; -- Leiria (Região de Leiria)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(200, 'Vila Pouca de Aguiar', 'VPA', 437, 11772, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 28; -- Vila Real (Alto Tâmega)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(201, 'São Brás de Alportel', 'SBRA', 153, 11604, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 19; -- Faro (Algarve)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(202, 'Tábua', 'TABU', 199, 11602, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 17; -- Coimbra (Região de Coimbra)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(203, 'Vendas Novas', 'VNOV', 222, 11537, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 18; -- Évora (Alentejo Central)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(204, 'Arganil', 'ARGAN', 332, 11313, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 17; -- Coimbra (Região de Coimbra)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(205, 'Sabugal', 'SABU', 822, 11270, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 20; -- Guarda (Beiras e Serra da Estrela)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(206, 'Ponte da Barca', 'PBAR', 182, 11178, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 27; -- Viana do Castelo (Alto Minho)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(207, 'Calheta', 'CALH', 111, 11162, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 31; -- Madeira

INSERT INTO xmunicipalities
SELECT xmunicipality_t(208, 'Sátão', 'SATA', 201, 11138, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 29; -- Viseu (Viseu Dão-Lafões)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(209, 'Alcácer do Sal', 'ASAL', 1499, 11082, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 26; -- Setúbal (Alentejo Litoral)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(210, 'Murtosa', 'MURT', 73, 11036, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 12; -- Aveiro (Região de Aveiro)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(211, 'Sever do Vouga', 'SVOU', 129, 10944, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 12; -- Aveiro (Região de Aveiro)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(212, 'Santa Comba Dão', 'SCDA', 111, 10925, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 29; -- Viseu (Viseu Dão-Lafões)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(213, 'Vila Franca do Campo', 'VFCA', 78, 10398, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 30; -- Açores

INSERT INTO xmunicipalities
SELECT xmunicipality_t(214, 'Alijó', 'ALIJ', 297, 10324, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 28; -- Vila Real (Douro)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(215, 'Reguengos de Monsaraz', 'RMON', 464, 9875, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 18; -- Évora (Alentejo Central)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(216, 'Vouzela', 'VOUZ', 193, 9765, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 29; -- Viseu (Viseu Dão-Lafões)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(217, 'Oliveira de Frades', 'OFRA', 147, 9763, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 29; -- Viseu (Viseu Dão-Lafões)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(218, 'Resende', 'RESE', 111, 9762, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 24; -- Porto (Tâmega e Sousa)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(219, 'Moimenta da Beira', 'MBEI', 219, 9733, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 28; -- Vila Real (Douro)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(220, 'Vila Nova de Cerveira', 'VNCE', 108, 9327, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 27; -- Viana do Castelo (Alto Minho)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(221, 'Montalegre', 'MONTA', 806, 9142, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 28; -- Vila Real (Alto Tâmega)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(222, 'Carregal do Sal', 'CSAL', 116, 9177, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 29; -- Viseu (Viseu Dão-Lafões)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(223, 'Mortágua', 'MORT', 251, 9059, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 17; -- Coimbra (Região de Coimbra)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(224, 'Aljustrel', 'ALJU', 458, 8922, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 13; -- Beja (Baixo Alentejo)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(225, 'Paredes de Coura', 'PCOU', 138, 8709, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 27; -- Viana do Castelo (Alto Minho)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(226, 'Ponta do Sol', 'PSOL', 46, 8709, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 31; -- Madeira

INSERT INTO xmunicipalities
SELECT xmunicipality_t(227, 'Chamusca', 'CHAM', 746, 8531, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 25; -- Santarém (Lezíria do Tejo)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(228, 'Idanha-a-Nova', 'INOV', 1416, 8492, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 16; -- Castelo Branco (Beira Baixa)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(229, 'Trancoso', 'TRAN', 361, 8313, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 20; -- Guarda (Beiras e Serra da Estrela)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(230, 'Mogadouro', 'MOGA', 760, 8237, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 15; -- Bragança (Terras de Trás-os-Montes)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(231, 'Ferreira do Zêzere', 'FZEZ', 190, 8018, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 25; -- Santarém (Médio Tejo)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(232, 'Campo Maior', 'CMAI', 247, 7916, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 23; -- Portalegre (Alto Alentejo)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(233, 'Ferreira do Alentejo', 'FALE', 648, 7912, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 13; -- Beja (Baixo Alentejo)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(234, 'Pinhel', 'PINH', 484, 7849, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 20; -- Guarda (Beiras e Serra da Estrela)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(235, 'Vila Nova da Barquinha', 'VBAR', 49, 7783, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 25; -- Santarém (Médio Tejo)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(236, 'Tarouca', 'TARO', 100, 7615, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 28; -- Vila Real (Douro)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(237, 'Melgaço', 'MELG', 238, 7599, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 27; -- Viana do Castelo (Alto Minho)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(238, 'Vinhais', 'VINH', 694, 7450, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 15; -- Bragança (Terras de Trás-os-Montes)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(239, 'Penalva do Castelo', 'PCAS', 134, 7342, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 29; -- Viseu (Viseu Dão-Lafões)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(240, 'Alpiarça', 'ALPI', 95, 7331, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 25; -- Santarém (Lezíria do Tejo)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(241, 'Vila Viçosa', 'VVIC', 194, 7300, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 18; -- Évora (Alentejo Central)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(242, 'Vila Nova de Poiares', 'VPOI', 84, 7140, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 17; -- Coimbra (Região de Coimbra)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(243, 'Proença-a-Nova', 'PNOV', 395, 7091, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 16; -- Castelo Branco (Beira Baixa)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(244, 'Castro Verde', 'CVRD', 569, 6965, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 13; -- Beja (Baixo Alentejo)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(245, 'Castro Marim', 'CMAR', 301, 6819, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 19; -- Faro (Algarve)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(246, 'Arraiolos', 'ARRA', 683, 6778, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 18; -- Évora (Alentejo Central)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(247, 'São João da Pesqueira', 'SJPE', 266, 6772, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 28; -- Vila Real (Douro)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(248, 'Torre de Moncorvo', 'TMON', 531, 6737, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 28; -- Vila Real (Douro)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(249, 'Almodôvar', 'ALMO', 777, 6694, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 13; -- Beja (Baixo Alentejo)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(250, 'Celorico da Beira', 'CBEI', 247, 6605, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 20; -- Guarda (Beiras e Serra da Estrela)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(251, 'Madalena', 'MADA', 147, 6533, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 30; -- Açores

INSERT INTO xmunicipalities
SELECT xmunicipality_t(252, 'Santana', 'SANA', 95, 6488, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 31; -- Madeira

INSERT INTO xmunicipalities
SELECT xmunicipality_t(253, 'Mondim de Basto', 'MBAST', 172, 6405, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 14; -- Braga (Ave)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(254, 'Mação', 'MACA', 400, 6403, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 25; -- Santarém (Médio Tejo)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(255, 'Borba', 'BORB', 145, 6398, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 18; -- Évora (Alentejo Central)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(256, 'Terras de Bouro', 'TBOU', 277, 6388, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 14; -- Braga (Cávado)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(257, 'Vila Nova de Foz Côa', 'VFCO', 398, 6369, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 28; -- Vila Real (Douro)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(258, 'Aljezur', 'ALJE', 323, 6362, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 19; -- Faro (Algarve)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(259, 'Alvaiázere', 'ALVA', 160, 6355, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 21; -- Leiria (Região de Leiria)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(260, 'Redondo', 'REDO', 369, 6299, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 18; -- Évora (Alentejo Central)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(261, 'Miranda do Douro', 'MDOU', 487, 6298, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 15; -- Bragança (Terras de Trás-os-Montes)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(262, 'Belmonte', 'BELM', 118, 6216, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 20; -- Guarda (Beiras e Serra da Estrela)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(263, 'Mértola', 'MERT', 1292, 6137, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 13; -- Beja (Baixo Alentejo)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(264, 'Vila Flor', 'VFLOR', 265, 6039, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 15; -- Bragança (Terras de Trás-os-Montes)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(265, 'Santa Marta de Penaguião', 'SMPE', 69, 5983, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 28; -- Vila Real (Douro)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(266, 'Vila do Bispo', 'VBIS', 179, 5935, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 19; -- Faro (Algarve)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(267, 'Povoação', 'POVO', 106, 5867, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 30; -- Açores

INSERT INTO xmunicipalities
SELECT xmunicipality_t(268, 'Ribeira de Pena', 'RPEN', 217, 5861, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 28; -- Vila Real (Alto Tâmega)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(269, 'Sernancelhe', 'SERN', 228, 5793, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 28; -- Vila Real (Douro)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(270, 'Portel', 'PORTE', 601, 5737, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 18; -- Évora (Alentejo Central)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(271, 'Nisa', 'NISA', 575, 5685, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 23; -- Portalegre (Alto Alentejo)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(272, 'Almeida', 'ALMEI', 517, 5676, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 20; -- Guarda (Beiras e Serra da Estrela)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(273, 'Armamar', 'ARMA', 117, 5650, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 28; -- Vila Real (Douro)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(274, 'Sabrosa', 'SABR', 156, 5634, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 28; -- Vila Real (Douro)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(275, 'Penela', 'PENE', 134, 5611, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 17; -- Coimbra (Região de Coimbra)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(276, 'Viana do Alentejo', 'VALE2', 393, 5538, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 18; -- Évora (Alentejo Central)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(277, 'Vila do Porto', 'VPO', 96, 5502, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 30; -- Açores

INSERT INTO xmunicipalities
SELECT xmunicipality_t(278, 'Carrazeda de Ansiães', 'CANS', 279, 5390, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 28; -- Vila Real (Douro)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(279, 'Monchique', 'MONQ', 395, 5323, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 19; -- Faro (Algarve)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(280, 'Porto Santo', 'PSAN', 42, 5562, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 31; -- Madeira

INSERT INTO xmunicipalities
SELECT xmunicipality_t(281, 'Aguiar da Beira', 'ABEI', 206, 5302, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 29; -- Viseu (Viseu Dão-Lafões)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(282, 'Figueiró dos Vinhos', 'FVIN', 173, 5270, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 21; -- Leiria (Região de Leiria)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(283, 'Murça', 'MURC', 189, 5256, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 28; -- Vila Real (Douro)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(284, 'Vidigueira', 'VIDI', 316, 5229, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 13; -- Beja (Baixo Alentejo)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(285, 'Tabuaço', 'TABU2', 133, 5052, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 28; -- Vila Real (Douro)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(286, 'Figueira de Castelo Rodrigo', 'FCRO', 508, 5044, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 20; -- Guarda (Beiras e Serra da Estrela)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(287, 'Alandroal', 'ALAN', 544, 4996, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 18; -- Évora (Alentejo Central)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(288, 'São Vicente', 'SVIC', 78, 4972, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 31; -- Madeira

INSERT INTO xmunicipalities
SELECT xmunicipality_t(289, 'Velas', 'VELA', 117, 4952, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 30; -- Açores

INSERT INTO xmunicipalities
SELECT xmunicipality_t(290, 'Oleiros', 'OLEI', 471, 4886, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 16; -- Castelo Branco (Beira Baixa)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(291, 'Boticas', 'BOTI', 322, 4885, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 28; -- Vila Real (Alto Tâmega)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(292, 'Ourique', 'OURI', 663, 4829, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 13; -- Beja (Baixo Alentejo)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(293, 'Penamacor', 'PMAC', 563, 4797, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 16; -- Castelo Branco (Beira Baixa)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(294, 'Vila Nova de Paiva', 'VNPA', 175, 4753, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 29; -- Viseu (Viseu Dão-Lafões)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(295, 'Mêda', 'MEDA', 205, 4572, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 20; -- Guarda (Beiras e Serra da Estrela)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(296, 'Cuba', 'CUBA', 171, 4471, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 13; -- Beja (Baixo Alentejo)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(297, 'Nordeste', 'NORD', 101, 4436, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 30; -- Açores

INSERT INTO xmunicipalities
SELECT xmunicipality_t(298, 'Lajes do Pico', 'LPIC', 126, 4403, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 30; -- Açores

INSERT INTO xmunicipalities
SELECT xmunicipality_t(299, 'Sousel', 'SOUS', 279, 4401, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 23; -- Portalegre (Alto Alentejo)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(300, 'Fornos de Algodres', 'FALG', 131, 4383, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 20; -- Guarda (Beiras e Serra da Estrela)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(301, 'Alfândega da Fé', 'AFÉ', 321, 4222, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 15; -- Bragança (Terras de Trás-os-Montes)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(302, 'Mora', 'MORA', 443, 4155, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 18; -- Évora (Alentejo Central)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(303, 'Pampilhosa da Serra', 'PSER', 396, 4138, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 17; -- Coimbra (Região de Coimbra)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(304, 'Santa Cruz da Graciosa', 'SCGR', 60, 4100, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 30; -- Açores

INSERT INTO xmunicipalities
SELECT xmunicipality_t(305, 'Constância', 'CONS', 55, 3958, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 25; -- Santarém (Médio Tejo)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(306, 'Avis', 'AVIS', 605, 3802, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 23; -- Portalegre (Alto Alentejo)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(307, 'Góis', 'GOIS', 263, 3800, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 17; -- Coimbra (Região de Coimbra)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(308, 'Pedrógão Grande', 'PGRA', 128, 3627, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 21; -- Leiria (Região de Leiria)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(309, 'Sardoal', 'SARD', 92, 3625, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 25; -- Santarém (Médio Tejo)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(310, 'Vila Velha de Ródão', 'VROD', 329, 3515, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 16; -- Castelo Branco (Beira Baixa)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(311, 'Calheta (Açores)', 'CALHA', 126, 3494, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 30; -- Açores

INSERT INTO xmunicipalities
SELECT xmunicipality_t(312, 'Mesão Frio', 'MFRI', 26, 3485, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 28; -- Vila Real (Douro)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(313, 'Vila de Rei', 'VREI', 191, 3442, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 16; -- Castelo Branco (Beira Baixa)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(314, 'São Roque do Pico', 'SRPI', 142, 3411, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 30; -- Açores

INSERT INTO xmunicipalities
SELECT xmunicipality_t(315, 'Gavião', 'GAVI', 294, 3324, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 23; -- Portalegre (Alto Alentejo)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(316, 'Crato', 'CRAT', 398, 3275, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 23; -- Portalegre (Alto Alentejo)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(317, 'Castelo de Vide', 'CVID', 265, 3197, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 23; -- Portalegre (Alto Alentejo)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(318, 'Alter do Chão', 'ACHA', 362, 3180, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 23; -- Portalegre (Alto Alentejo)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(319, 'Freixo de Espada à Cinta', 'FESP', 244, 3139, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 28; -- Vila Real (Douro)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(320, 'Marvão', 'MARV', 154, 3024, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 23; -- Portalegre (Alto Alentejo)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(321, 'Monforte', 'MONF', 420, 3002, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 23; -- Portalegre (Alto Alentejo)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(322, 'Fronteira', 'FRON', 248, 2974, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 23; -- Portalegre (Alto Alentejo)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(323, 'Manteigas', 'MANT', 122, 2938, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 20; -- Guarda (Beiras e Serra da Estrela)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(324, 'Penedono', 'PENE2', 133, 2804, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 28; -- Vila Real (Douro)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(325, 'Arronches', 'ARRO', 314, 2768, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 23; -- Portalegre (Alto Alentejo)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(326, 'Castanheira de Pera', 'CPER', 66, 2710, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 21; -- Leiria (Região de Leiria)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(327, 'Porto Moniz', 'PMON', 82, 2528, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 31; -- Madeira

INSERT INTO xmunicipalities
SELECT xmunicipality_t(328, 'Mourão', 'MOUR2', 278, 2424, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 18; -- Évora (Alentejo Central)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(329, 'Alcoutim', 'ALCOU', 575, 2413, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 19; -- Faro (Algarve)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(330, 'Alvito', 'ALVI', 264, 2279, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 13; -- Beja (Baixo Alentejo)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(331, 'Santa Cruz das Flores', 'SCFL', 70, 2098, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 30; -- Açores

INSERT INTO xmunicipalities
SELECT xmunicipality_t(332, 'Lajes das Flores', 'LFLO', 70, 1446, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 30; -- Açores

INSERT INTO xmunicipalities
SELECT xmunicipality_t(333, 'Barrancos', 'BARR2', 168, 1430, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 13; -- Beja (Baixo Alentejo)

INSERT INTO xmunicipalities
SELECT xmunicipality_t(334, 'Corvo', 'CORV', 17, 435, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
FROM xmunicipalities m
WHERE m.code = 30; -- Açores

INSERT INTO xmunicipalities
    SELECT xmunicipality_t(335, 'Cadaval', 'CDV', 174.9, 13382, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
    FROM xmunicipalities m
    WHERE m.code = 22; -- Lisboa

INSERT INTO xmunicipalities
    SELECT xmunicipality_t(336, 'Estremoz', 'ETZ', 513.8, 12688, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
    FROM xmunicipalities m
    WHERE m.code = 18; -- Évora

INSERT INTO xmunicipalities
    SELECT xmunicipality_t(337, 'Golegã', 'GLG', 76.3, 5400, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
    FROM xmunicipalities m
    WHERE m.code = 25; -- Santarém

INSERT INTO xmunicipalities
    SELECT xmunicipality_t(338, 'Peso da Régua', 'PRG', 94.9, 14553, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
    FROM xmunicipalities m
    WHERE m.code = 28; -- Vila Real

INSERT INTO xmunicipalities
    SELECT xmunicipality_t(339, 'Vimioso', 'VMS', 481.6, 4154, xfinancial_records_tab_t(), xfinancial_records_tab_t(), xleaderships_tab_t(), TREAT(REF(m) AS REF xnut_iii_t))
    FROM xmunicipalities m
    WHERE m.code = 15; -- Bragança

