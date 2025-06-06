-- Insertions for municipalities table using municipalities_t sub-types constructors
-- GeoLevel 1: Country
INSERT INTO municipalities
    VALUES (country_t(1, 'Portugal', 'PT', 92212, 10352042));

-- GeoLevel 2: NUT I
INSERT INTO municipalities
    SELECT nut_i_t(2, 'Continente', 'PT1', 89078, 9854236, TREAT(REF(m) AS REF country_t))
    FROM municipalities m
    WHERE m.code = 1;

INSERT INTO municipalities
    SELECT nut_i_t(3, 'Açores', 'PT2', 2333, 246746, TREAT(REF(m) AS REF country_t))
    FROM municipalities m
    WHERE m.code = 1;

INSERT INTO municipalities
    SELECT nut_i_t(4, 'Madeira', 'PT3', 801, 251060, TREAT(REF(m) AS REF country_t))
    FROM municipalities m
    WHERE m.code = 1;

-- GeoLevel 3: NUT II
INSERT INTO municipalities
    SELECT nut_ii_t(5, 'Norte', 'PT11', 21286, 3572954, TREAT(REF(m) AS REF nut_i_t))
    FROM municipalities m
    WHERE m.code = 2;

INSERT INTO municipalities
    SELECT nut_ii_t(6, 'Centro', 'PT12', 28199, 2238765, TREAT(REF(m) AS REF nut_i_t))
    FROM municipalities m
    WHERE m.code = 2;

INSERT INTO municipalities
    SELECT nut_ii_t(7, 'Lisboa', 'PT13', 3001, 2238765, TREAT(REF(m) AS REF nut_i_t))
    FROM municipalities m
    WHERE m.code = 2;

INSERT INTO municipalities
    SELECT nut_ii_t(8, 'Alentejo', 'PT15', 31605, 704707, TREAT(REF(m) AS REF nut_i_t))
    FROM municipalities m
    WHERE m.code = 2;

INSERT INTO municipalities
    SELECT nut_ii_t(9, 'Algarve', 'PT16', 4997, 451006, TREAT(REF(m) AS REF nut_i_t))
    FROM municipalities m
    WHERE m.code = 2;

INSERT INTO municipalities
    SELECT nut_ii_t(10, 'Açores', 'PT21', 2333, 246746, TREAT(REF(m) AS REF nut_i_t))
    FROM municipalities m
    WHERE m.code = 3;

INSERT INTO municipalities
    SELECT nut_ii_t(11, 'Madeira', 'PT31', 801, 251060, TREAT(REF(m) AS REF nut_i_t))
    FROM municipalities m
    WHERE m.code = 4;

-- GeoLevel 4: NUT III
INSERT INTO municipalities
SELECT nut_iii_t(12, 'Aveiro', 'AV', 2808, 725461, TREAT(REF(m) AS REF nut_ii_t))
FROM municipalities m
WHERE m.code = 6; -- Centro

INSERT INTO municipalities
SELECT nut_iii_t(13, 'Beja', 'BE', 10263, 148881, TREAT(REF(m) AS REF nut_ii_t))
FROM municipalities m
WHERE m.code = 8; -- Alentejo

INSERT INTO municipalities
SELECT nut_iii_t(14, 'Braga', 'BR', 2673, 863547, TREAT(REF(m) AS REF nut_ii_t))
FROM municipalities m
WHERE m.code = 5; -- Norte

INSERT INTO municipalities
SELECT nut_iii_t(15, 'Bragança', 'BG', 6608, 122739, TREAT(REF(m) AS REF nut_ii_t))
FROM municipalities m
WHERE m.code = 5; -- Norte

INSERT INTO municipalities
SELECT nut_iii_t(16, 'Castelo Branco', 'CB', 6675, 179608, TREAT(REF(m) AS REF nut_ii_t))
FROM municipalities m
WHERE m.code = 6; -- Centro

INSERT INTO municipalities
SELECT nut_iii_t(17, 'Coimbra', 'C', 3947, 418136, TREAT(REF(m) AS REF nut_ii_t))
FROM municipalities m
WHERE m.code = 6; -- Centro

INSERT INTO municipalities
SELECT nut_iii_t(18, 'Évora', 'E', 7393, 153475, TREAT(REF(m) AS REF nut_ii_t))
FROM municipalities m
WHERE m.code = 8; -- Alentejo

INSERT INTO municipalities
SELECT nut_iii_t(19, 'Faro', 'FA', 4960, 484122, TREAT(REF(m) AS REF nut_ii_t))
FROM municipalities m
WHERE m.code = 9; -- Algarve

INSERT INTO municipalities
SELECT nut_iii_t(20, 'Guarda', 'GD', 5518, 141995, TREAT(REF(m) AS REF nut_ii_t))
FROM municipalities m
WHERE m.code = 6; -- Centro

INSERT INTO municipalities
SELECT nut_iii_t(21, 'Leiria', 'LE', 3515, 479261, TREAT(REF(m) AS REF nut_ii_t))
FROM municipalities m
WHERE m.code = 6; -- Centro

INSERT INTO municipalities
SELECT nut_iii_t(22, 'Lisboa', 'L', 2761, 2355867, TREAT(REF(m) AS REF nut_ii_t))
FROM municipalities m
WHERE m.code = 7; -- Lisboa (NUT II)

INSERT INTO municipalities
SELECT nut_iii_t(23, 'Portalegre', 'PR', 6065, 104081, TREAT(REF(m) AS REF nut_ii_t))
FROM municipalities m
WHERE m.code = 8; -- Alentejo

INSERT INTO municipalities
SELECT nut_iii_t(24, 'Porto', 'P', 2395, 1846178, TREAT(REF(m) AS REF nut_ii_t))
FROM municipalities m
WHERE m.code = 5; -- Norte

INSERT INTO municipalities
SELECT nut_iii_t(25, 'Santarém', 'SA', 6747, 441255, TREAT(REF(m) AS REF nut_ii_t))
FROM municipalities m
WHERE m.code = 7; -- Lisboa (NUT II)

INSERT INTO municipalities
SELECT nut_iii_t(26, 'Setúbal', 'SE', 5064, 902863, TREAT(REF(m) AS REF nut_ii_t))
FROM municipalities m
WHERE m.code = 7; -- Lisboa (NUT II)

INSERT INTO municipalities
SELECT nut_iii_t(27, 'Viana do Castelo', 'VC', 2255, 234215, TREAT(REF(m) AS REF nut_ii_t))
FROM municipalities m
WHERE m.code = 5; -- Norte

INSERT INTO municipalities
SELECT nut_iii_t(28, 'Vila Real', 'VR', 4328, 185086, TREAT(REF(m) AS REF nut_ii_t))
FROM municipalities m
WHERE m.code = 5; -- Norte

INSERT INTO municipalities
SELECT nut_iii_t(29, 'Viseu', 'VI', 5007, 355309, TREAT(REF(m) AS REF nut_ii_t))
FROM municipalities m
WHERE m.code = 6; -- Centro

INSERT INTO municipalities
SELECT nut_iii_t(30, 'Açores', 'A', 2333, 241025, TREAT(REF(m) AS REF nut_ii_t))
FROM municipalities m
WHERE m.code = 10; -- Açores (NUT II)

INSERT INTO municipalities
SELECT nut_iii_t(31, 'Madeira', 'M', 801, 256622, TREAT(REF(m) AS REF nut_ii_t))
FROM municipalities m
WHERE m.code = 11; -- Madeira (NUT II)

-- GeoLevel 5: Municipality
INSERT INTO municipalities
SELECT municipality_t(32, 'Lisboa', 'LISB', 100, 567131, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 22; -- Lisboa (Grande Lisboa)

INSERT INTO municipalities
SELECT municipality_t(33, 'Sintra', 'SNTR', 319, 395528, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 22; -- Lisboa (Grande Lisboa)

INSERT INTO municipalities
SELECT municipality_t(34, 'Vila Nova de Gaia', 'VNGA', 168, 311223, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 24; -- Porto (Área Metropolitana do Porto)

INSERT INTO municipalities
SELECT municipality_t(35, 'Porto', 'PORT', 41, 248769, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 24; -- Porto (Área Metropolitana do Porto)

INSERT INTO municipalities
SELECT municipality_t(36, 'Cascais', 'CASC', 97, 219636, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 22; -- Lisboa (Grande Lisboa)

INSERT INTO municipalities
SELECT municipality_t(37, 'Loures', 'LOUR', 167, 207065, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 22; -- Lisboa (Grande Lisboa)

INSERT INTO municipalities
SELECT municipality_t(38, 'Braga', 'BRAG', 183, 201583, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 14; -- Braga (Cávado)

INSERT INTO municipalities
SELECT municipality_t(39, 'Almada', 'ALMD', 70, 181232, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 26; -- Setúbal (Península de Setúbal)

INSERT INTO municipalities
SELECT municipality_t(40, 'Matosinhos', 'MATO', 62, 179558, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 24; -- Porto (Área Metropolitana do Porto)

INSERT INTO municipalities
SELECT municipality_t(41, 'Amadora', 'AMAD', 24, 178253, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 22; -- Lisboa (Grande Lisboa)

INSERT INTO municipalities
SELECT municipality_t(42, 'Oeiras', 'OEIR', 46, 175677, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 22; -- Lisboa (Grande Lisboa)

INSERT INTO municipalities
SELECT municipality_t(43, 'Seixal', 'SEIX', 95, 173163, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 26; -- Setúbal (Península de Setúbal)

INSERT INTO municipalities
SELECT municipality_t(44, 'Gondomar', 'GOND', 131, 168582, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 24; -- Porto (Área Metropolitana do Porto)

INSERT INTO municipalities
SELECT municipality_t(45, 'Guimarães', 'GUIM', 241, 156789, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 14; -- Braga (Ave)

INSERT INTO municipalities
SELECT municipality_t(46, 'Odivelas', 'ODIV', 26, 153708, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 22; -- Lisboa (Grande Lisboa)

INSERT INTO municipalities
SELECT municipality_t(47, 'Coimbra', 'COIM', 319, 144822, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 17; -- Coimbra (Região de Coimbra)

INSERT INTO municipalities
SELECT municipality_t(48, 'Maia', 'MAIA', 83, 142594, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 24; -- Porto (Área Metropolitana do Porto)

INSERT INTO municipalities
SELECT municipality_t(49, 'Santa Maria da Feira', 'SMFE', 215, 139837, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 12; -- Aveiro (Área Metropolitana do Porto)

INSERT INTO municipalities
SELECT municipality_t(50, 'Vila Franca de Xira', 'VFXI', 318, 139452, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 22; -- Lisboa (Grande Lisboa)

INSERT INTO municipalities
SELECT municipality_t(51, 'Vila Nova de Famalicão', 'VNFA', 201, 135994, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 14; -- Braga (Ave)

INSERT INTO municipalities
SELECT municipality_t(52, 'Leiria', 'LEIR', 565, 133795, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 21; -- Leiria (Região de Leiria)

INSERT INTO municipalities
SELECT municipality_t(53, 'Setúbal', 'SETU', 230, 123548, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 26; -- Setúbal (Península de Setúbal)

INSERT INTO municipalities
SELECT municipality_t(54, 'Barcelos', 'BARC', 378, 117005, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 14; -- Braga (Cávado)

INSERT INTO municipalities
SELECT municipality_t(55, 'Funchal', 'FUNC', 76, 107562, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 31; -- Madeira

INSERT INTO municipalities
SELECT municipality_t(56, 'Viseu', 'VISE', 507, 101977, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 29; -- Viseu (Viseu Dão-Lafões)

INSERT INTO municipalities
SELECT municipality_t(57, 'Valongo', 'VALO', 75, 100166, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 24; -- Porto (Área Metropolitana do Porto)

INSERT INTO municipalities
SELECT municipality_t(58, 'Mafra', 'MAFR', 292, 90128, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 22; -- Lisboa (Grande Lisboa)

INSERT INTO municipalities
SELECT municipality_t(59, 'Torres Vedras', 'TVED', 407, 88020, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 21; -- Leiria (Oeste)

INSERT INTO municipalities
SELECT municipality_t(60, 'Viana do Castelo', 'VIAN', 319, 86780, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 27; -- Viana do Castelo (Alto Minho)

INSERT INTO municipalities
SELECT municipality_t(61, 'Aveiro', 'AVEI', 197, 86037, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 12; -- Aveiro (Região de Aveiro)

INSERT INTO municipalities
SELECT municipality_t(62, 'Paredes', 'PARD', 156, 86015, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 24; -- Porto (Tâmega e Sousa)

INSERT INTO municipalities
SELECT municipality_t(63, 'Vila do Conde', 'VCON', 149, 84872, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 24; -- Porto (Área Metropolitana do Porto)

INSERT INTO municipalities
SELECT municipality_t(64, 'Barreiro', 'BARR', 36, 79966, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 26; -- Setúbal (Península de Setúbal)

INSERT INTO municipalities
SELECT municipality_t(65, 'Loulé', 'LOUL', 763, 74410, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 19; -- Faro (Algarve)

INSERT INTO municipalities
SELECT municipality_t(66, 'Palmela', 'PALM', 465, 72938, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 26; -- Setúbal (Península de Setúbal)

INSERT INTO municipalities
SELECT municipality_t(67, 'Penafiel', 'PENF', 212, 70320, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 24; -- Porto (Tâmega e Sousa)

INSERT INTO municipalities
SELECT municipality_t(68, 'Faro', 'FARO', 202, 69468, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 19; -- Faro (Algarve)

INSERT INTO municipalities
SELECT municipality_t(69, 'Moita', 'MOIT', 55, 68950, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 26; -- Setúbal (Península de Setúbal)

INSERT INTO municipalities
SELECT municipality_t(70, 'Ponta Delgada', 'PDEL', 233, 68758, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 30; -- Açores

INSERT INTO municipalities
SELECT municipality_t(71, 'Santo Tirso', 'STIR', 136, 67826, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 24; -- Porto (Área Metropolitana do Porto)

INSERT INTO municipalities
SELECT municipality_t(72, 'Póvoa de Varzim', 'PVAR', 82, 67525, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 24; -- Porto (Área Metropolitana do Porto)

INSERT INTO municipalities
SELECT municipality_t(73, 'Oliveira de Azeméis', 'OAZE', 161, 67277, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 12; -- Aveiro (Área Metropolitana do Porto)

INSERT INTO municipalities
SELECT municipality_t(74, 'Portimão', 'PORM', 182, 63079, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 19; -- Faro (Algarve)

INSERT INTO municipalities
SELECT municipality_t(75, 'Santarém', 'SANT', 552, 61009, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 25; -- Santarém (Lezíria do Tejo)

INSERT INTO municipalities
SELECT municipality_t(76, 'Figueira da Foz', 'FFOZ', 379, 60670, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 17; -- Coimbra (Região de Coimbra)

INSERT INTO municipalities
SELECT municipality_t(77, 'Montijo', 'MONT', 348, 59197, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 26; -- Setúbal (Península de Setúbal)

INSERT INTO municipalities
SELECT municipality_t(78, 'Alcobaça', 'ALCO', 408, 57358, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 21; -- Leiria (Oeste)

INSERT INTO municipalities
SELECT municipality_t(79, 'Ovar', 'OVAR', 147, 56735, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 12; -- Aveiro (Região de Aveiro)

INSERT INTO municipalities
SELECT municipality_t(80, 'Paços de Ferreira', 'PFER', 71, 55981, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 24; -- Porto (Tâmega e Sousa)

INSERT INTO municipalities
SELECT municipality_t(81, 'Sesimbra', 'SESI', 195, 55504, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 26; -- Setúbal (Península de Setúbal)

INSERT INTO municipalities
SELECT municipality_t(82, 'Felgueiras', 'FELG', 115, 55429, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 24; -- Porto (Tâmega e Sousa)

INSERT INTO municipalities
SELECT municipality_t(83, 'Caldas da Rainha', 'CRAN', 256, 54145, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 21; -- Leiria (Oeste)

INSERT INTO municipalities
SELECT municipality_t(84, 'Évora', 'EVOR', 1307, 53937, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 18; -- Évora (Alentejo Central)

INSERT INTO municipalities
SELECT municipality_t(85, 'Castelo Branco', 'CBRA', 1439, 52913, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 16; -- Castelo Branco (Beira Baixa)

INSERT INTO municipalities
SELECT municipality_t(86, 'Amarante', 'AMAR', 301, 52235, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 24; -- Porto (Tâmega e Sousa)

INSERT INTO municipalities
SELECT municipality_t(87, 'Pombal', 'POMB', 626, 52026, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 21; -- Leiria (Região de Leiria)

INSERT INTO municipalities
SELECT municipality_t(88, 'Vila Real', 'VREA', 378, 49928, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 28; -- Vila Real (Douro)

INSERT INTO municipalities
SELECT municipality_t(89, 'Marco de Canaveses', 'MCAN', 201, 49576, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 24; -- Porto (Tâmega e Sousa)

INSERT INTO municipalities
SELECT municipality_t(90, 'Fafe', 'FAFE', 219, 48514, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 14; -- Braga (Ave)

INSERT INTO municipalities
SELECT municipality_t(91, 'Alenquer', 'ALEN', 304, 48319, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 21; -- Leiria (Oeste)

INSERT INTO municipalities
SELECT municipality_t(92, 'Lousada', 'LOUS', 96, 48309, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 24; -- Porto (Tâmega e Sousa)

INSERT INTO municipalities
SELECT municipality_t(93, 'Vila Verde', 'VVER', 228, 48150, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 14; -- Braga (Cávado)

INSERT INTO municipalities
SELECT municipality_t(94, 'Albufeira', 'ALBU', 141, 47524, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 19; -- Faro (Algarve)

INSERT INTO municipalities
SELECT municipality_t(95, 'Águeda', 'AGUE', 335, 47220, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 12; -- Aveiro (Região de Aveiro)

INSERT INTO municipalities
SELECT municipality_t(96, 'Ourém', 'OURE', 416, 46512, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 25; -- Santarém (Médio Tejo)

INSERT INTO municipalities
SELECT municipality_t(97, 'Covilhã', 'COVI', 555, 46375, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 20; -- Guarda (Beiras e Serra da Estrela)

INSERT INTO municipalities
SELECT municipality_t(98, 'Olhão', 'OLHA', 130, 45043, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 19; -- Faro (Algarve)

INSERT INTO municipalities
SELECT municipality_t(99, 'Santa Cruz', 'SCRU', 81, 44178, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 31; -- Madeira

INSERT INTO municipalities
SELECT municipality_t(100, 'Ílhavo', 'ILHA', 73, 42129, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 12; -- Aveiro (Região de Aveiro)

INSERT INTO municipalities
SELECT municipality_t(101, 'Ponte de Lima', 'PLIM', 320, 41130, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 27; -- Viana do Castelo (Alto Minho)

INSERT INTO municipalities
SELECT municipality_t(102, 'Marinha Grande', 'MGRAN', 187, 41011, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 21; -- Leiria (Região de Leiria)

INSERT INTO municipalities
SELECT municipality_t(103, 'Guarda', 'GUAR', 712, 40011, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 20; -- Guarda (Beiras e Serra da Estrela)

INSERT INTO municipalities
SELECT municipality_t(104, 'Trofa', 'TROF', 72, 39997, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 24; -- Porto (Área Metropolitana do Porto)

INSERT INTO municipalities
SELECT municipality_t(105, 'Silves', 'SILV', 680, 39497, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 19; -- Faro (Algarve)

INSERT INTO municipalities
SELECT municipality_t(106, 'Chaves', 'CHAV', 591, 37419, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 28; -- Vila Real (Alto Tâmega)

INSERT INTO municipalities
SELECT municipality_t(107, 'Esposende', 'ESPO', 95, 37129, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 14; -- Braga (Cávado)

INSERT INTO municipalities
SELECT municipality_t(108, 'Tomar', 'TOMA', 351, 36859, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 25; -- Santarém (Médio Tejo)

INSERT INTO municipalities
SELECT municipality_t(109, 'Bragança', 'BRAN', 1173, 35425, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 15; -- Bragança (Terras de Trás-os-Montes)

INSERT INTO municipalities
SELECT municipality_t(110, 'Cantanhede', 'CANT', 390, 34916, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 17; -- Coimbra (Região de Coimbra)

INSERT INTO municipalities
SELECT municipality_t(111, 'Torres Novas', 'TNOV', 270, 34719, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 25; -- Santarém (Médio Tejo)

INSERT INTO municipalities
SELECT municipality_t(112, 'Lagos', 'LAGO', 212, 34552, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 19; -- Faro (Algarve)

INSERT INTO municipalities
SELECT municipality_t(113, 'Beja', 'BEJA', 1026, 33838, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 13; -- Beja (Baixo Alentejo)

INSERT INTO municipalities
SELECT municipality_t(114, 'Abrantes', 'ABRA', 714, 33811, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 25; -- Santarém (Médio Tejo)

INSERT INTO municipalities
SELECT municipality_t(115, 'Angra do Heroísmo', 'AHER', 239, 33786, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 30; -- Açores

INSERT INTO municipalities
SELECT municipality_t(116, 'Odemira', 'ODEM', 1720, 33124, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 13; -- Beja (Alentejo Litoral)

INSERT INTO municipalities
SELECT municipality_t(117, 'Câmara de Lobos', 'CLOB', 52, 32786, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 31; -- Madeira

INSERT INTO municipalities
SELECT municipality_t(118, 'Espinho', 'ESPI', 21, 32393, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 12; -- Aveiro (Área Metropolitana do Porto)

INSERT INTO municipalities
SELECT municipality_t(119, 'Benavente', 'BENA', 521, 32323, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 25; -- Santarém (Lezíria do Tejo)

INSERT INTO municipalities
SELECT municipality_t(120, 'Ribeira Grande', 'RGRA', 180, 32280, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 30; -- Açores

INSERT INTO municipalities
SELECT municipality_t(121, 'Lourinhã', 'LORI', 147, 28383, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 21; -- Leiria (Oeste)

INSERT INTO municipalities
SELECT municipality_t(122, 'Santiago do Cacém', 'SCAC', 1060, 28246, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 26; -- Setúbal (Alentejo Litoral)

INSERT INTO municipalities
SELECT municipality_t(123, 'Anadia', 'ANAD', 216, 28205, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 12; -- Aveiro (Região de Aveiro)

INSERT INTO municipalities
SELECT municipality_t(124, 'Tavira', 'TAVI', 607, 27861, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 19; -- Faro (Algarve)

INSERT INTO municipalities
SELECT municipality_t(125, 'Peniche', 'PENI', 78, 27554, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 21; -- Leiria (Oeste)

INSERT INTO municipalities
SELECT municipality_t(126, 'Estarreja', 'ESTA', 108, 27097, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 12; -- Aveiro (Região de Aveiro)

INSERT INTO municipalities
SELECT municipality_t(127, 'Fundão', 'FUND', 700, 26981, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 20; -- Guarda (Beiras e Serra da Estrela)

INSERT INTO municipalities
SELECT municipality_t(128, 'Tondela', 'TOND', 371, 25824, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 29; -- Viseu (Beiras e Serra da Estrela)

INSERT INTO municipalities
SELECT municipality_t(129, 'Albergaria-a-Velha', 'ALVE', 158, 25779, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 12; -- Aveiro (Região de Aveiro)

INSERT INTO municipalities
SELECT municipality_t(130, 'Oliveira do Bairro', 'OBAI', 87, 25055, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 12; -- Aveiro (Região de Aveiro)

INSERT INTO municipalities
SELECT municipality_t(131, 'Lagoa', 'LAGOA', 88, 24918, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 19; -- Faro (Algarve)

INSERT INTO municipalities
SELECT municipality_t(132, 'Montemor-o-Velho', 'MVEL', 229, 24889, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 17; -- Coimbra (Região de Coimbra)

INSERT INTO municipalities
SELECT municipality_t(133, 'Vizela', 'VIZE', 24, 24529, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 14; -- Braga (Ave)

INSERT INTO municipalities
SELECT municipality_t(134, 'Vagos', 'VAGO', 165, 24452, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 12; -- Aveiro (Região de Aveiro)

INSERT INTO municipalities
SELECT municipality_t(135, 'Cartaxo', 'CART', 158, 24359, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 25; -- Santarém (Lezíria do Tejo)

INSERT INTO municipalities
SELECT municipality_t(136, 'Lamego', 'LAME', 165, 24129, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 28; -- Vila Real (Douro)

INSERT INTO municipalities
SELECT municipality_t(137, 'Porto de Mós', 'PMOS', 261, 23998, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 21; -- Leiria (Região de Leiria)

INSERT INTO municipalities
SELECT municipality_t(138, 'São João da Madeira', 'SJMA', 8, 23863, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 12; -- Aveiro (Área Metropolitana do Porto)

INSERT INTO municipalities
SELECT municipality_t(139, 'Salvaterra de Magos', 'SMAG', 243, 23337, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 25; -- Santarém (Lezíria do Tejo)

INSERT INTO municipalities
SELECT municipality_t(140, 'Azambuja', 'AZAM', 262, 22932, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 25; -- Santarém (Lezíria do Tejo)

INSERT INTO municipalities
SELECT municipality_t(141, 'Almeirim', 'ALME', 222, 22820, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 25; -- Santarém (Lezíria do Tejo)

INSERT INTO municipalities
SELECT municipality_t(142, 'Póvoa de Lanhoso', 'PLAN', 131, 22607, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 14; -- Braga (Ave)

INSERT INTO municipalities
SELECT municipality_t(143, 'Rio Maior', 'RMAI', 272, 22315, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 25; -- Santarém (Lezíria do Tejo)

INSERT INTO municipalities
SELECT municipality_t(144, 'Entroncamento', 'ENTR', 31, 21985, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 25; -- Santarém (Médio Tejo)

INSERT INTO municipalities
SELECT municipality_t(145, 'Portalegre', 'PORTA', 447, 21914, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 23; -- Portalegre (Alto Alentejo)

INSERT INTO municipalities
SELECT municipality_t(146, 'Seia', 'SEIA', 435, 21441, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 20; -- Guarda (Beiras e Serra da Estrela)

INSERT INTO municipalities
SELECT municipality_t(147, 'Mirandela', 'MIRA', 659, 21390, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 15; -- Bragança (Terras de Trás-os-Montes)

INSERT INTO municipalities
SELECT municipality_t(148, 'Vale de Cambra', 'VCAM', 147, 21251, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 12; -- Aveiro (Área Metropolitana do Porto)

INSERT INTO municipalities
SELECT municipality_t(149, 'Arouca', 'AROU', 329, 20916, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 12; -- Aveiro (Área Metropolitana do Porto)

INSERT INTO municipalities
SELECT municipality_t(150, 'Arcos de Valdevez', 'AVAL', 447, 20859, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 27; -- V comentou: Iana do Castelo (Alto Minho)

INSERT INTO municipalities
SELECT municipality_t(151, 'Elvas', 'ELVA', 631, 20412, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 23; -- Portalegre (Alto Alentejo)

INSERT INTO municipalities
SELECT municipality_t(152, 'Alcochete', 'ALCOH', 128, 20101, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 26; -- Setúbal (Península de Setúbal)

INSERT INTO municipalities
SELECT municipality_t(153, 'Mealhada', 'MEAL', 111, 19787, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 17; -- Coimbra (Região de Coimbra)

INSERT INTO municipalities
SELECT municipality_t(154, 'Vila da Praia da Vitória', 'VPRA', 161, 19740, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 30; -- Açores

INSERT INTO municipalities
SELECT municipality_t(155, 'Machico', 'MACH', 68, 19595, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 31; -- Madeira

INSERT INTO municipalities
SELECT municipality_t(156, 'Amares', 'AMAR2', 82, 19578, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 14; -- Braga (Cávado)

INSERT INTO municipalities
SELECT municipality_t(157, 'Oliveira do Hospital', 'OHOS', 234, 19464, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 17; -- Coimbra (Região de Coimbra)

INSERT INTO municipalities
SELECT municipality_t(158, 'Vila Real de Santo António', 'VRSA', 61, 19314, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 19; -- Faro (Algarve)

INSERT INTO municipalities
SELECT municipality_t(159, 'Mangualde', 'MANG', 219, 18592, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 29; -- Viseu (Viseu Dão-Lafões)

INSERT INTO municipalities
SELECT municipality_t(160, 'Monção', 'MONC', 211, 18032, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 27; -- Viana do Castelo (Alto Minho)

INSERT INTO municipalities
SELECT municipality_t(161, 'Celorico de Basto', 'CBAST', 181, 17655, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 24; -- Porto (Tâmega e Sousa)

INSERT INTO municipalities
SELECT municipality_t(162, 'Condeixa-a-Nova', 'CONDE', 138, 17555, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 17; -- Coimbra (Região de Coimbra)

INSERT INTO municipalities
SELECT municipality_t(163, 'Cinfães', 'CINF', 239, 17432, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 24; -- Porto (Tâmega e Sousa)

INSERT INTO municipalities
SELECT municipality_t(164, 'Lousã', 'LOUSA', 138, 17419, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 17; -- Coimbra (Região de Coimbra)

INSERT INTO municipalities
SELECT municipality_t(165, 'Coruche', 'CORU', 1116, 17365, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 25; -- Santarém (Lezíria do Tejo)

INSERT INTO municipalities
SELECT municipality_t(166, 'Soure', 'SOUR', 265, 17238, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 17; -- Coimbra (Região de Coimbra)

INSERT INTO municipalities
SELECT municipality_t(167, 'Baião', 'BAIA', 174, 17201, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 24; -- Porto (Tâmega e Sousa)

INSERT INTO municipalities
SELECT municipality_t(168, 'Batalha', 'BATA', 103, 16565, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 21; -- Leiria (Região de Leiria)

INSERT INTO municipalities
SELECT municipality_t(169, 'Caminha', 'CAMI', 136, 16442, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 27; -- Viana do Castelo (Alto Minho)

INSERT INTO municipalities
SELECT municipality_t(170, 'Montemor-o-Novo', 'MNOV', 1232, 15951, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 18; -- Évora (Alentejo Central)

INSERT INTO municipalities
SELECT municipality_t(171, 'Nazaré', 'NAZA', 82, 15698, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 21; -- Leiria (Oeste)

INSERT INTO municipalities
SELECT municipality_t(172, 'Cabeceiras de Basto', 'CBASTO', 241, 15560, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 14; -- Braga (Ave)

INSERT INTO municipalities
SELECT municipality_t(173, 'Castelo de Paiva', 'CPAI', 115, 15448, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 24; -- Porto (Tâmega e Sousa)

INSERT INTO municipalities
SELECT municipality_t(174, 'Arruda dos Vinhos', 'ARRU', 78, 15321, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 21; -- Leiria (Oeste)

INSERT INTO municipalities
SELECT municipality_t(175, 'Ponte de Sor', 'PSOR', 839, 15207, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 23; -- Portalegre (Alto Alentejo)

INSERT INTO municipalities
SELECT municipality_t(176, 'São Pedro do Sul', 'SPSUL', 348, 15197, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 29; -- Viseu (Viseu Dão-Lafões)

INSERT INTO municipalities
SELECT municipality_t(177, 'Lagoa (Açores)', 'LAGO2', 45, 14920, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 30; -- Açores

INSERT INTO municipalities
SELECT municipality_t(178, 'Sertã', 'SERT', 446, 14900, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 16; -- Castelo Branco (Beira Baixa)

INSERT INTO municipalities
SELECT municipality_t(179, 'Sines', 'SINE', 203, 14771, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 26; -- Setúbal (Alentejo Litoral)

INSERT INTO municipalities
SELECT municipality_t(180, 'Valpaços', 'VALP', 548, 14590, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 28; -- Vila Real (Alto Tâmega)

INSERT INTO municipalities
SELECT municipality_t(181, 'Horta', 'HORT', 173, 14466, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 30; -- Açores

INSERT INTO municipalities
SELECT municipality_t(182, 'Macedo de Cavaleiros', 'MCAV', 699, 14236, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 15; -- Bragança (Terras de Trás-os-Montes)

INSERT INTO municipalities
SELECT municipality_t(183, 'Grândola', 'GRAN', 801, 14165, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 26; -- Setúbal (Alentejo Litoral)

INSERT INTO municipalities
SELECT municipality_t(184, 'Valença', 'VALE', 117, 14159, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 27; -- Viana do Castelo (Alto Minho)

INSERT INTO municipalities
SELECT municipality_t(185, 'Bombarral', 'BOMB', 91, 13990, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 21; -- Leiria (Oeste)

INSERT INTO municipalities
SELECT municipality_t(186, 'Castro Daire', 'CDAI', 379, 13732, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 29; -- Viseu (Viseu Dão-Lafões)

INSERT INTO municipalities
SELECT municipality_t(187, 'Serpa', 'SERP', 1105, 13731, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 13; -- Beja (Baixo Alentejo)

INSERT INTO municipalities
SELECT municipality_t(188, 'Nelas', 'NELA', 125, 13323, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 29; -- Viseu (Viseu Dão-Lafões)

INSERT INTO municipalities
SELECT municipality_t(189, 'Moura', 'MOUR', 958, 13320, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 13; -- Beja (Baixo Alentejo)

INSERT INTO municipalities
SELECT municipality_t(190, 'Óbidos', 'OBID', 142, 13294, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 21; -- Leiria (Oeste)

INSERT INTO municipalities
SELECT municipality_t(191, 'Ribeira Brava', 'RBRA', 65, 13080, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 31; -- Madeira

INSERT INTO municipalities
SELECT municipality_t(192, 'Penacova', 'PENA', 217, 12919, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 17; -- Coimbra (Região de Coimbra)

INSERT INTO municipalities
SELECT municipality_t(193, 'Alcanena', 'ALCA', 127, 12750, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 25; -- Santarém (Médio Tejo)

INSERT INTO municipalities
SELECT municipality_t(194, 'Mira', 'MIRA2', 124, 12523, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 17; -- Coimbra (Região de Coimbra)

INSERT INTO municipalities
SELECT municipality_t(195, 'Gouveia', 'GOUV', 300, 12222, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 20; -- Guarda (Beiras e Serra da Estrela)

INSERT INTO municipalities
SELECT municipality_t(196, 'Miranda do Corvo', 'MCOR', 126, 12117, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 17; -- Coimbra (Região de Coimbra)

INSERT INTO municipalities
SELECT municipality_t(197, 'Vieira do Minho', 'VMIN', 216, 12066, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 14; -- Braga (Ave)

INSERT INTO municipalities
SELECT municipality_t(198, 'Sobral de Monte Agraço', 'SMAG2', 52, 11879, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 21; -- Leiria (Oeste)

INSERT INTO municipalities
SELECT municipality_t(199, 'Ansião', 'ANSI', 176, 11865, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 21; -- Leiria (Região de Leiria)

INSERT INTO municipalities
SELECT municipality_t(200, 'Vila Pouca de Aguiar', 'VPA', 437, 11772, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 28; -- Vila Real (Alto Tâmega)

INSERT INTO municipalities
SELECT municipality_t(201, 'São Brás de Alportel', 'SBRA', 153, 11604, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 19; -- Faro (Algarve)

INSERT INTO municipalities
SELECT municipality_t(202, 'Tábua', 'TABU', 199, 11602, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 17; -- Coimbra (Região de Coimbra)

INSERT INTO municipalities
SELECT municipality_t(203, 'Vendas Novas', 'VNOV', 222, 11537, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 18; -- Évora (Alentejo Central)

INSERT INTO municipalities
SELECT municipality_t(204, 'Arganil', 'ARGAN', 332, 11313, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 17; -- Coimbra (Região de Coimbra)

INSERT INTO municipalities
SELECT municipality_t(205, 'Sabugal', 'SABU', 822, 11270, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 20; -- Guarda (Beiras e Serra da Estrela)

INSERT INTO municipalities
SELECT municipality_t(206, 'Ponte da Barca', 'PBAR', 182, 11178, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 27; -- Viana do Castelo (Alto Minho)

INSERT INTO municipalities
SELECT municipality_t(207, 'Calheta', 'CALH', 111, 11162, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 31; -- Madeira

INSERT INTO municipalities
SELECT municipality_t(208, 'Sátão', 'SATA', 201, 11138, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 29; -- Viseu (Viseu Dão-Lafões)

INSERT INTO municipalities
SELECT municipality_t(209, 'Alcácer do Sal', 'ASAL', 1499, 11082, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 26; -- Setúbal (Alentejo Litoral)

INSERT INTO municipalities
SELECT municipality_t(210, 'Murtosa', 'MURT', 73, 11036, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 12; -- Aveiro (Região de Aveiro)

INSERT INTO municipalities
SELECT municipality_t(211, 'Sever do Vouga', 'SVOU', 129, 10944, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 12; -- Aveiro (Região de Aveiro)

INSERT INTO municipalities
SELECT municipality_t(212, 'Santa Comba Dão', 'SCDA', 111, 10925, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 29; -- Viseu (Viseu Dão-Lafões)

INSERT INTO municipalities
SELECT municipality_t(213, 'Vila Franca do Campo', 'VFCA', 78, 10398, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 30; -- Açores

INSERT INTO municipalities
SELECT municipality_t(214, 'Alijó', 'ALIJ', 297, 10324, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 28; -- Vila Real (Douro)

INSERT INTO municipalities
SELECT municipality_t(215, 'Reguengos de Monsaraz', 'RMON', 464, 9875, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 18; -- Évora (Alentejo Central)

INSERT INTO municipalities
SELECT municipality_t(216, 'Vouzela', 'VOUZ', 193, 9765, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 29; -- Viseu (Viseu Dão-Lafões)

INSERT INTO municipalities
SELECT municipality_t(217, 'Oliveira de Frades', 'OFRA', 147, 9763, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 29; -- Viseu (Viseu Dão-Lafões)

INSERT INTO municipalities
SELECT municipality_t(218, 'Resende', 'RESE', 111, 9762, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 24; -- Porto (Tâmega e Sousa)

INSERT INTO municipalities
SELECT municipality_t(219, 'Moimenta da Beira', 'MBEI', 219, 9733, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 28; -- Vila Real (Douro)

INSERT INTO municipalities
SELECT municipality_t(220, 'Vila Nova de Cerveira', 'VNCE', 108, 9327, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 27; -- Viana do Castelo (Alto Minho)

INSERT INTO municipalities
SELECT municipality_t(221, 'Montalegre', 'MONTA', 806, 9142, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 28; -- Vila Real (Alto Tâmega)

INSERT INTO municipalities
SELECT municipality_t(222, 'Carregal do Sal', 'CSAL', 116, 9177, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 29; -- Viseu (Viseu Dão-Lafões)

INSERT INTO municipalities
SELECT municipality_t(223, 'Mortágua', 'MORT', 251, 9059, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 17; -- Coimbra (Região de Coimbra)

INSERT INTO municipalities
SELECT municipality_t(224, 'Aljustrel', 'ALJU', 458, 8922, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 13; -- Beja (Baixo Alentejo)

INSERT INTO municipalities
SELECT municipality_t(225, 'Paredes de Coura', 'PCOU', 138, 8709, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 27; -- Viana do Castelo (Alto Minho)

INSERT INTO municipalities
SELECT municipality_t(226, 'Ponta do Sol', 'PSOL', 46, 8709, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 31; -- Madeira

INSERT INTO municipalities
SELECT municipality_t(227, 'Chamusca', 'CHAM', 746, 8531, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 25; -- Santarém (Lezíria do Tejo)

INSERT INTO municipalities
SELECT municipality_t(228, 'Idanha-a-Nova', 'INOV', 1416, 8492, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 16; -- Castelo Branco (Beira Baixa)

INSERT INTO municipalities
SELECT municipality_t(229, 'Trancoso', 'TRAN', 361, 8313, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 20; -- Guarda (Beiras e Serra da Estrela)

INSERT INTO municipalities
SELECT municipality_t(230, 'Mogadouro', 'MOGA', 760, 8237, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 15; -- Bragança (Terras de Trás-os-Montes)

INSERT INTO municipalities
SELECT municipality_t(231, 'Ferreira do Zêzere', 'FZEZ', 190, 8018, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 25; -- Santarém (Médio Tejo)

INSERT INTO municipalities
SELECT municipality_t(232, 'Campo Maior', 'CMAI', 247, 7916, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 23; -- Portalegre (Alto Alentejo)

INSERT INTO municipalities
SELECT municipality_t(233, 'Ferreira do Alentejo', 'FALE', 648, 7912, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 13; -- Beja (Baixo Alentejo)

INSERT INTO municipalities
SELECT municipality_t(234, 'Pinhel', 'PINH', 484, 7849, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 20; -- Guarda (Beiras e Serra da Estrela)

INSERT INTO municipalities
SELECT municipality_t(235, 'Vila Nova da Barquinha', 'VBAR', 49, 7783, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 25; -- Santarém (Médio Tejo)

INSERT INTO municipalities
SELECT municipality_t(236, 'Tarouca', 'TARO', 100, 7615, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 28; -- Vila Real (Douro)

INSERT INTO municipalities
SELECT municipality_t(237, 'Melgaço', 'MELG', 238, 7599, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 27; -- Viana do Castelo (Alto Minho)

INSERT INTO municipalities
SELECT municipality_t(238, 'Vinhais', 'VINH', 694, 7450, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 15; -- Bragança (Terras de Trás-os-Montes)

INSERT INTO municipalities
SELECT municipality_t(239, 'Penalva do Castelo', 'PCAS', 134, 7342, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 29; -- Viseu (Viseu Dão-Lafões)

INSERT INTO municipalities
SELECT municipality_t(240, 'Alpiarça', 'ALPI', 95, 7331, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 25; -- Santarém (Lezíria do Tejo)

INSERT INTO municipalities
SELECT municipality_t(241, 'Vila Viçosa', 'VVIC', 194, 7300, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 18; -- Évora (Alentejo Central)

INSERT INTO municipalities
SELECT municipality_t(242, 'Vila Nova de Poiares', 'VPOI', 84, 7140, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 17; -- Coimbra (Região de Coimbra)

INSERT INTO municipalities
SELECT municipality_t(243, 'Proença-a-Nova', 'PNOV', 395, 7091, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 16; -- Castelo Branco (Beira Baixa)

INSERT INTO municipalities
SELECT municipality_t(244, 'Castro Verde', 'CVRD', 569, 6965, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 13; -- Beja (Baixo Alentejo)

INSERT INTO municipalities
SELECT municipality_t(245, 'Castro Marim', 'CMAR', 301, 6819, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 19; -- Faro (Algarve)

INSERT INTO municipalities
SELECT municipality_t(246, 'Arraiolos', 'ARRA', 683, 6778, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 18; -- Évora (Alentejo Central)

INSERT INTO municipalities
SELECT municipality_t(247, 'São João da Pesqueira', 'SJPE', 266, 6772, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 28; -- Vila Real (Douro)

INSERT INTO municipalities
SELECT municipality_t(248, 'Torre de Moncorvo', 'TMON', 531, 6737, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 28; -- Vila Real (Douro)

INSERT INTO municipalities
SELECT municipality_t(249, 'Almodôvar', 'ALMO', 777, 6694, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 13; -- Beja (Baixo Alentejo)

INSERT INTO municipalities
SELECT municipality_t(250, 'Celorico da Beira', 'CBEI', 247, 6605, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 20; -- Guarda (Beiras e Serra da Estrela)

INSERT INTO municipalities
SELECT municipality_t(251, 'Madalena', 'MADA', 147, 6533, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 30; -- Açores

INSERT INTO municipalities
SELECT municipality_t(252, 'Santana', 'SANA', 95, 6488, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 31; -- Madeira

INSERT INTO municipalities
SELECT municipality_t(253, 'Mondim de Basto', 'MBAST', 172, 6405, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 14; -- Braga (Ave)

INSERT INTO municipalities
SELECT municipality_t(254, 'Mação', 'MACA', 400, 6403, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 25; -- Santarém (Médio Tejo)

INSERT INTO municipalities
SELECT municipality_t(255, 'Borba', 'BORB', 145, 6398, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 18; -- Évora (Alentejo Central)

INSERT INTO municipalities
SELECT municipality_t(256, 'Terras de Bouro', 'TBOU', 277, 6388, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 14; -- Braga (Cávado)

INSERT INTO municipalities
SELECT municipality_t(257, 'Vila Nova de Foz Côa', 'VFCO', 398, 6369, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 28; -- Vila Real (Douro)

INSERT INTO municipalities
SELECT municipality_t(258, 'Aljezur', 'ALJE', 323, 6362, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 19; -- Faro (Algarve)

INSERT INTO municipalities
SELECT municipality_t(259, 'Alvaiázere', 'ALVA', 160, 6355, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 21; -- Leiria (Região de Leiria)

INSERT INTO municipalities
SELECT municipality_t(260, 'Redondo', 'REDO', 369, 6299, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 18; -- Évora (Alentejo Central)

INSERT INTO municipalities
SELECT municipality_t(261, 'Miranda do Douro', 'MDOU', 487, 6298, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 15; -- Bragança (Terras de Trás-os-Montes)

INSERT INTO municipalities
SELECT municipality_t(262, 'Belmonte', 'BELM', 118, 6216, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 20; -- Guarda (Beiras e Serra da Estrela)

INSERT INTO municipalities
SELECT municipality_t(263, 'Mértola', 'MERT', 1292, 6137, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 13; -- Beja (Baixo Alentejo)

INSERT INTO municipalities
SELECT municipality_t(264, 'Vila Flor', 'VFLOR', 265, 6039, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 15; -- Bragança (Terras de Trás-os-Montes)

INSERT INTO municipalities
SELECT municipality_t(265, 'Santa Marta de Penaguião', 'SMPE', 69, 5983, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 28; -- Vila Real (Douro)

INSERT INTO municipalities
SELECT municipality_t(266, 'Vila do Bispo', 'VBIS', 179, 5935, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 19; -- Faro (Algarve)

INSERT INTO municipalities
SELECT municipality_t(267, 'Povoação', 'POVO', 106, 5867, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 30; -- Açores

INSERT INTO municipalities
SELECT municipality_t(268, 'Ribeira de Pena', 'RPEN', 217, 5861, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 28; -- Vila Real (Alto Tâmega)

INSERT INTO municipalities
SELECT municipality_t(269, 'Sernancelhe', 'SERN', 228, 5793, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 28; -- Vila Real (Douro)

INSERT INTO municipalities
SELECT municipality_t(270, 'Portel', 'PORTE', 601, 5737, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 18; -- Évora (Alentejo Central)

INSERT INTO municipalities
SELECT municipality_t(271, 'Nisa', 'NISA', 575, 5685, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 23; -- Portalegre (Alto Alentejo)

INSERT INTO municipalities
SELECT municipality_t(272, 'Almeida', 'ALMEI', 517, 5676, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 20; -- Guarda (Beiras e Serra da Estrela)

INSERT INTO municipalities
SELECT municipality_t(273, 'Armamar', 'ARMA', 117, 5650, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 28; -- Vila Real (Douro)

INSERT INTO municipalities
SELECT municipality_t(274, 'Sabrosa', 'SABR', 156, 5634, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 28; -- Vila Real (Douro)

INSERT INTO municipalities
SELECT municipality_t(275, 'Penela', 'PENE', 134, 5611, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 17; -- Coimbra (Região de Coimbra)

INSERT INTO municipalities
SELECT municipality_t(276, 'Viana do Alentejo', 'VALE2', 393, 5538, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 18; -- Évora (Alentejo Central)

INSERT INTO municipalities
SELECT municipality_t(277, 'Vila do Porto', 'VPO', 96, 5502, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 30; -- Açores

INSERT INTO municipalities
SELECT municipality_t(278, 'Carrazeda de Ansiães', 'CANS', 279, 5390, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 28; -- Vila Real (Douro)

INSERT INTO municipalities
SELECT municipality_t(279, 'Monchique', 'MONQ', 395, 5323, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 19; -- Faro (Algarve)

INSERT INTO municipalities
SELECT municipality_t(280, 'Porto Santo', 'PSAN', 42, 5562, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 31; -- Madeira

INSERT INTO municipalities
SELECT municipality_t(281, 'Aguiar da Beira', 'ABEI', 206, 5302, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 29; -- Viseu (Viseu Dão-Lafões)

INSERT INTO municipalities
SELECT municipality_t(282, 'Figueiró dos Vinhos', 'FVIN', 173, 5270, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 21; -- Leiria (Região de Leiria)

INSERT INTO municipalities
SELECT municipality_t(283, 'Murça', 'MURC', 189, 5256, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 28; -- Vila Real (Douro)

INSERT INTO municipalities
SELECT municipality_t(284, 'Vidigueira', 'VIDI', 316, 5229, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 13; -- Beja (Baixo Alentejo)

INSERT INTO municipalities
SELECT municipality_t(285, 'Tabuaço', 'TABU2', 133, 5052, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 28; -- Vila Real (Douro)

INSERT INTO municipalities
SELECT municipality_t(286, 'Figueira de Castelo Rodrigo', 'FCRO', 508, 5044, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 20; -- Guarda (Beiras e Serra da Estrela)

INSERT INTO municipalities
SELECT municipality_t(287, 'Alandroal', 'ALAN', 544, 4996, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 18; -- Évora (Alentejo Central)

INSERT INTO municipalities
SELECT municipality_t(288, 'São Vicente', 'SVIC', 78, 4972, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 31; -- Madeira

INSERT INTO municipalities
SELECT municipality_t(289, 'Velas', 'VELA', 117, 4952, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 30; -- Açores

INSERT INTO municipalities
SELECT municipality_t(290, 'Oleiros', 'OLEI', 471, 4886, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 16; -- Castelo Branco (Beira Baixa)

INSERT INTO municipalities
SELECT municipality_t(291, 'Boticas', 'BOTI', 322, 4885, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 28; -- Vila Real (Alto Tâmega)

INSERT INTO municipalities
SELECT municipality_t(292, 'Ourique', 'OURI', 663, 4829, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 13; -- Beja (Baixo Alentejo)

INSERT INTO municipalities
SELECT municipality_t(293, 'Penamacor', 'PMAC', 563, 4797, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 16; -- Castelo Branco (Beira Baixa)

INSERT INTO municipalities
SELECT municipality_t(294, 'Vila Nova de Paiva', 'VNPA', 175, 4753, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 29; -- Viseu (Viseu Dão-Lafões)

INSERT INTO municipalities
SELECT municipality_t(295, 'Mêda', 'MEDA', 205, 4572, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 20; -- Guarda (Beiras e Serra da Estrela)

INSERT INTO municipalities
SELECT municipality_t(296, 'Cuba', 'CUBA', 171, 4471, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 13; -- Beja (Baixo Alentejo)

INSERT INTO municipalities
SELECT municipality_t(297, 'Nordeste', 'NORD', 101, 4436, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 30; -- Açores

INSERT INTO municipalities
SELECT municipality_t(298, 'Lajes do Pico', 'LPIC', 126, 4403, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 30; -- Açores

INSERT INTO municipalities
SELECT municipality_t(299, 'Sousel', 'SOUS', 279, 4401, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 23; -- Portalegre (Alto Alentejo)

INSERT INTO municipalities
SELECT municipality_t(300, 'Fornos de Algodres', 'FALG', 131, 4383, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 20; -- Guarda (Beiras e Serra da Estrela)

INSERT INTO municipalities
SELECT municipality_t(301, 'Alfândega da Fé', 'AFÉ', 321, 4222, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 15; -- Bragança (Terras de Trás-os-Montes)

INSERT INTO municipalities
SELECT municipality_t(302, 'Mora', 'MORA', 443, 4155, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 18; -- Évora (Alentejo Central)

INSERT INTO municipalities
SELECT municipality_t(303, 'Pampilhosa da Serra', 'PSER', 396, 4138, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 17; -- Coimbra (Região de Coimbra)

INSERT INTO municipalities
SELECT municipality_t(304, 'Santa Cruz da Graciosa', 'SCGR', 60, 4100, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 30; -- Açores

INSERT INTO municipalities
SELECT municipality_t(305, 'Constância', 'CONS', 55, 3958, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 25; -- Santarém (Médio Tejo)

INSERT INTO municipalities
SELECT municipality_t(306, 'Avis', 'AVIS', 605, 3802, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 23; -- Portalegre (Alto Alentejo)

INSERT INTO municipalities
SELECT municipality_t(307, 'Góis', 'GOIS', 263, 3800, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 17; -- Coimbra (Região de Coimbra)

INSERT INTO municipalities
SELECT municipality_t(308, 'Pedrógão Grande', 'PGRA', 128, 3627, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 21; -- Leiria (Região de Leiria)

INSERT INTO municipalities
SELECT municipality_t(309, 'Sardoal', 'SARD', 92, 3625, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 25; -- Santarém (Médio Tejo)

INSERT INTO municipalities
SELECT municipality_t(310, 'Vila Velha de Ródão', 'VROD', 329, 3515, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 16; -- Castelo Branco (Beira Baixa)

INSERT INTO municipalities
SELECT municipality_t(311, 'Calheta (Açores)', 'CALHA', 126, 3494, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 30; -- Açores

INSERT INTO municipalities
SELECT municipality_t(312, 'Mesão Frio', 'MFRI', 26, 3485, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 28; -- Vila Real (Douro)

INSERT INTO municipalities
SELECT municipality_t(313, 'Vila de Rei', 'VREI', 191, 3442, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 16; -- Castelo Branco (Beira Baixa)

INSERT INTO municipalities
SELECT municipality_t(314, 'São Roque do Pico', 'SRPI', 142, 3411, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 30; -- Açores

INSERT INTO municipalities
SELECT municipality_t(315, 'Gavião', 'GAVI', 294, 3324, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 23; -- Portalegre (Alto Alentejo)

INSERT INTO municipalities
SELECT municipality_t(316, 'Crato', 'CRAT', 398, 3275, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 23; -- Portalegre (Alto Alentejo)

INSERT INTO municipalities
SELECT municipality_t(317, 'Castelo de Vide', 'CVID', 265, 3197, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 23; -- Portalegre (Alto Alentejo)

INSERT INTO municipalities
SELECT municipality_t(318, 'Alter do Chão', 'ACHA', 362, 3180, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 23; -- Portalegre (Alto Alentejo)

INSERT INTO municipalities
SELECT municipality_t(319, 'Freixo de Espada à Cinta', 'FESP', 244, 3139, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 28; -- Vila Real (Douro)

INSERT INTO municipalities
SELECT municipality_t(320, 'Marvão', 'MARV', 154, 3024, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 23; -- Portalegre (Alto Alentejo)

INSERT INTO municipalities
SELECT municipality_t(321, 'Monforte', 'MONF', 420, 3002, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 23; -- Portalegre (Alto Alentejo)

INSERT INTO municipalities
SELECT municipality_t(322, 'Fronteira', 'FRON', 248, 2974, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 23; -- Portalegre (Alto Alentejo)

INSERT INTO municipalities
SELECT municipality_t(323, 'Manteigas', 'MANT', 122, 2938, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 20; -- Guarda (Beiras e Serra da Estrela)

INSERT INTO municipalities
SELECT municipality_t(324, 'Penedono', 'PENE2', 133, 2804, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 28; -- Vila Real (Douro)

INSERT INTO municipalities
SELECT municipality_t(325, 'Arronches', 'ARRO', 314, 2768, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 23; -- Portalegre (Alto Alentejo)

INSERT INTO municipalities
SELECT municipality_t(326, 'Castanheira de Pera', 'CPER', 66, 2710, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 21; -- Leiria (Região de Leiria)

INSERT INTO municipalities
SELECT municipality_t(327, 'Porto Moniz', 'PMON', 82, 2528, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 31; -- Madeira

INSERT INTO municipalities
SELECT municipality_t(328, 'Mourão', 'MOUR2', 278, 2424, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 18; -- Évora (Alentejo Central)

INSERT INTO municipalities
SELECT municipality_t(329, 'Alcoutim', 'ALCOU', 575, 2413, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 19; -- Faro (Algarve)

INSERT INTO municipalities
SELECT municipality_t(330, 'Alvito', 'ALVI', 264, 2279, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 13; -- Beja (Baixo Alentejo)

INSERT INTO municipalities
SELECT municipality_t(331, 'Santa Cruz das Flores', 'SCFL', 70, 2098, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 30; -- Açores

INSERT INTO municipalities
SELECT municipality_t(332, 'Lajes das Flores', 'LFLO', 70, 1446, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 30; -- Açores

INSERT INTO municipalities
SELECT municipality_t(333, 'Barrancos', 'BARR2', 168, 1430, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 13; -- Beja (Baixo Alentejo)

INSERT INTO municipalities
SELECT municipality_t(334, 'Corvo', 'CORV', 17, 435, TREAT(REF(m) AS REF nut_iii_t))
FROM municipalities m
WHERE m.code = 30; -- Açores

