-- Insertions for municipalities table using municipalities_t type constructor
-- GeoLevel 1: Country
INSERT INTO municipalities
    VALUES (municipalities_t(1, 'Portugal', 'PT', 92212, 10352042, 1, NULL));

-- GeoLevel 2: NUT I
INSERT INTO municipalities
    SELECT municipalities_t(2, 'Continente', 'PT1', 89078, 9854236, 2, REF(m))
    FROM municipalities m
    WHERE m.code = 1;

INSERT INTO municipalities
    SELECT municipalities_t(3, 'Açores', 'PT2', 2333, 246746, 2, REF(m))
    FROM municipalities m
    WHERE m.code = 1;

INSERT INTO municipalities
    SELECT municipalities_t(4, 'Madeira', 'PT3', 801, 251060, 2, REF(m))
    FROM municipalities m
    WHERE m.code = 1;

-- GeoLevel 3: NUT II
INSERT INTO municipalities
    SELECT municipalities_t(5, 'Norte', 'PT11', 21286, 3572954, 3, REF(m))
    FROM municipalities m
    WHERE m.code = 2;

INSERT INTO municipalities
    SELECT municipalities_t(6, 'Centro', 'PT12', 28199, 2238765, 3, REF(m))
    FROM municipalities m
    WHERE m.code = 2;

INSERT INTO municipalities
    SELECT municipalities_t(7, 'Lisboa', 'PT13', 3001, 2238765, 3, REF(m))
    FROM municipalities m
    WHERE m.code = 2;

INSERT INTO municipalities
    SELECT municipalities_t(8, 'Alentejo', 'PT15', 31605, 704707, 3, REF(m))
    FROM municipalities m
    WHERE m.code = 2;

INSERT INTO municipalities
    SELECT municipalities_t(9, 'Algarve', 'PT16', 4997, 451006, 3, REF(m))
    FROM municipalities m
    WHERE m.code = 2;

INSERT INTO municipalities
    SELECT municipalities_t(10, 'Açores', 'PT21', 2333, 246746, 3, REF(m))
    FROM municipalities m
    WHERE m.code = 3;

INSERT INTO municipalities
    SELECT municipalities_t(11, 'Madeira', 'PT31', 801, 251060, 3, REF(m))
    FROM municipalities m
    WHERE m.code = 4;

-- GeoLevel 4: NUT III
INSERT INTO municipalities
SELECT municipalities_t(12, 'Aveiro', 'AV', 2808, 725461, 4, REF(m))
FROM municipalities m
WHERE m.code = 6; -- Centro

INSERT INTO municipalities
SELECT municipalities_t(13, 'Beja', 'BE', 10263, 148881, 4, REF(m))
FROM municipalities m
WHERE m.code = 8; -- Alentejo

INSERT INTO municipalities
SELECT municipalities_t(14, 'Braga', 'BR', 2673, 863547, 4, REF(m))
FROM municipalities m
WHERE m.code = 5; -- Norte

INSERT INTO municipalities
SELECT municipalities_t(15, 'Bragança', 'BG', 6608, 122739, 4, REF(m))
FROM municipalities m
WHERE m.code = 5; -- Norte

INSERT INTO municipalities
SELECT municipalities_t(16, 'Castelo Branco', 'CB', 6675, 179608, 4, REF(m))
FROM municipalities m
WHERE m.code = 6; -- Centro

INSERT INTO municipalities
SELECT municipalities_t(17, 'Coimbra', 'C', 3947, 418136, 4, REF(m))
FROM municipalities m
WHERE m.code = 6; -- Centro

INSERT INTO municipalities
SELECT municipalities_t(18, 'Évora', 'E', 7393, 153475, 4, REF(m))
FROM municipalities m
WHERE m.code = 8; -- Alentejo

INSERT INTO municipalities
SELECT municipalities_t(19, 'Faro', 'FA', 4960, 484122, 4, REF(m))
FROM municipalities m
WHERE m.code = 9; -- Algarve

INSERT INTO municipalities
SELECT municipalities_t(20, 'Guarda', 'GD', 5518, 141995, 4, REF(m))
FROM municipalities m
WHERE m.code = 6; -- Centro

INSERT INTO municipalities
SELECT municipalities_t(21, 'Leiria', 'LE', 3515, 479261, 4, REF(m))
FROM municipalities m
WHERE m.code = 6; -- Centro

INSERT INTO municipalities
SELECT municipalities_t(22, 'Lisboa', 'L', 2761, 2355867, 4, REF(m))
FROM municipalities m
WHERE m.code = 7; -- Lisboa (NUT II)

INSERT INTO municipalities
SELECT municipalities_t(23, 'Portalegre', 'PT', 6065, 104081, 4, REF(m))
FROM municipalities m
WHERE m.code = 8; -- Alentejo

INSERT INTO municipalities
SELECT municipalities_t(24, 'Porto', 'P', 2395, 1846178, 4, REF(m))
FROM municipalities m
WHERE m.code = 5; -- Norte

INSERT INTO municipalities
SELECT municipalities_t(25, 'Santarém', 'SA', 6747, 441255, 4, REF(m))
FROM municipalities m
WHERE m.code = 7; -- Lisboa (NUT II)

INSERT INTO municipalities
SELECT municipalities_t(26, 'Setúbal', 'SE', 5064, 902863, 4, REF(m))
FROM municipalities m
WHERE m.code = 7; -- Lisboa (NUT II)

INSERT INTO municipalities
SELECT municipalities_t(27, 'Viana do Castelo', 'VC', 2255, 234215, 4, REF(m))
FROM municipalities m
WHERE m.code = 5; -- Norte

INSERT INTO municipalities
SELECT municipalities_t(28, 'Vila Real', 'VR', 4328, 185086, 4, REF(m))
FROM municipalities m
WHERE m.code = 5; -- Norte

INSERT INTO municipalities
SELECT municipalities_t(29, 'Viseu', 'VI', 5007, 355309, 4, REF(m))
FROM municipalities m
WHERE m.code = 6; -- Centro

INSERT INTO municipalities
SELECT municipalities_t(30, 'Açores', 'A', 2333, 241025, 4, REF(m))
FROM municipalities m
WHERE m.code = 10; -- Açores (NUT II)

INSERT INTO municipalities
SELECT municipalities_t(31, 'Madeira', 'M', 801, 256622, 4, REF(m))
FROM municipalities m
WHERE m.code = 11; -- Madeira (NUT II)

-- GeoLevel 5: Municipality
INSERT INTO municipalities
SELECT municipalities_t(32, 'Lisboa', 'LISB', 100, 567131, 5, REF(m))
FROM municipalities m
WHERE m.code = 22; -- Lisboa (Grande Lisboa)

INSERT INTO municipalities
SELECT municipalities_t(33, 'Sintra', 'SNTR', 319, 395528, 5, REF(m))
FROM municipalities m
WHERE m.code = 22; -- Lisboa (Grande Lisboa)

INSERT INTO municipalities
SELECT municipalities_t(34, 'Vila Nova de Gaia', 'VNGA', 168, 311223, 5, REF(m))
FROM municipalities m
WHERE m.code = 24; -- Porto (Área Metropolitana do Porto)

INSERT INTO municipalities
SELECT municipalities_t(35, 'Porto', 'PORT', 41, 248769, 5, REF(m))
FROM municipalities m
WHERE m.code = 24; -- Porto (Área Metropolitana do Porto)

INSERT INTO municipalities
SELECT municipalities_t(36, 'Cascais', 'CASC', 97, 219636, 5, REF(m))
FROM municipalities m
WHERE m.code = 22; -- Lisboa (Grande Lisboa)

INSERT INTO municipalities
SELECT municipalities_t(37, 'Loures', 'LOUR', 167, 207065, 5, REF(m))
FROM municipalities m
WHERE m.code = 22; -- Lisboa (Grande Lisboa)

INSERT INTO municipalities
SELECT municipalities_t(38, 'Braga', 'BRAG', 183, 201583, 5, REF(m))
FROM municipalities m
WHERE m.code = 14; -- Braga (Cávado)

INSERT INTO municipalities
SELECT municipalities_t(39, 'Almada', 'ALMD', 70, 181232, 5, REF(m))
FROM municipalities m
WHERE m.code = 26; -- Setúbal (Península de Setúbal)

INSERT INTO municipalities
SELECT municipalities_t(40, 'Matosinhos', 'MATO', 62, 179558, 5, REF(m))
FROM municipalities m
WHERE m.code = 24; -- Porto (Área Metropolitana do Porto)

INSERT INTO municipalities
SELECT municipalities_t(41, 'Amadora', 'AMAD', 24, 178253, 5, REF(m))
FROM municipalities m
WHERE m.code = 22; -- Lisboa (Grande Lisboa)

INSERT INTO municipalities
SELECT municipalities_t(42, 'Oeiras', 'OEIR', 46, 175677, 5, REF(m))
FROM municipalities m
WHERE m.code = 22; -- Lisboa (Grande Lisboa)

INSERT INTO municipalities
SELECT municipalities_t(43, 'Seixal', 'SEIX', 95, 173163, 5, REF(m))
FROM municipalities m
WHERE m.code = 26; -- Setúbal (Península de Setúbal)

INSERT INTO municipalities
SELECT municipalities_t(44, 'Gondomar', 'GOND', 131, 168582, 5, REF(m))
FROM municipalities m
WHERE m.code = 24; -- Porto (Área Metropolitana do Porto)

INSERT INTO municipalities
SELECT municipalities_t(45, 'Guimarães', 'GUIM', 241, 156789, 5, REF(m))
FROM municipalities m
WHERE m.code = 14; -- Braga (Ave)

INSERT INTO municipalities
SELECT municipalities_t(46, 'Odivelas', 'ODIV', 26, 153708, 5, REF(m))
FROM municipalities m
WHERE m.code = 22; -- Lisboa (Grande Lisboa)

INSERT INTO municipalities
SELECT municipalities_t(47, 'Coimbra', 'COIM', 319, 144822, 5, REF(m))
FROM municipalities m
WHERE m.code = 17; -- Coimbra (Região de Coimbra)

INSERT INTO municipalities
SELECT municipalities_t(48, 'Maia', 'MAIA', 83, 142594, 5, REF(m))
FROM municipalities m
WHERE m.code = 24; -- Porto (Área Metropolitana do Porto)

INSERT INTO municipalities
SELECT municipalities_t(49, 'Santa Maria da Feira', 'SMFE', 215, 139837, 5, REF(m))
FROM municipalities m
WHERE m.code = 12; -- Aveiro (Área Metropolitana do Porto)

INSERT INTO municipalities
SELECT municipalities_t(50, 'Vila Franca de Xira', 'VFXI', 318, 139452, 5, REF(m))
FROM municipalities m
WHERE m.code = 22; -- Lisboa (Grande Lisboa)

INSERT INTO municipalities
SELECT municipalities_t(51, 'Vila Nova de Famalicão', 'VNFA', 201, 135994, 5, REF(m))
FROM municipalities m
WHERE m.code = 14; -- Braga (Ave)

INSERT INTO municipalities
SELECT municipalities_t(52, 'Leiria', 'LEIR', 565, 133795, 5, REF(m))
FROM municipalities m
WHERE m.code = 21; -- Leiria (Região de Leiria)

INSERT INTO municipalities
SELECT municipalities_t(53, 'Setúbal', 'SETU', 230, 123548, 5, REF(m))
FROM municipalities m
WHERE m.code = 26; -- Setúbal (Península de Setúbal)

INSERT INTO municipalities
SELECT municipalities_t(54, 'Barcelos', 'BARC', 378, 117005, 5, REF(m))
FROM municipalities m
WHERE m.code = 14; -- Braga (Cávado)

INSERT INTO municipalities
SELECT municipalities_t(55, 'Funchal', 'FUNC', 76, 107562, 5, REF(m))
FROM municipalities m
WHERE m.code = 31; -- Madeira

INSERT INTO municipalities
SELECT municipalities_t(56, 'Viseu', 'VISE', 507, 101977, 5, REF(m))
FROM municipalities m
WHERE m.code = 29; -- Viseu (Viseu Dão-Lafões)

INSERT INTO municipalities
SELECT municipalities_t(57, 'Valongo', 'VALO', 75, 100166, 5, REF(m))
FROM municipalities m
WHERE m.code = 24; -- Porto (Área Metropolitana do Porto)

INSERT INTO municipalities
SELECT municipalities_t(58, 'Mafra', 'MAFR', 292, 90128, 5, REF(m))
FROM municipalities m
WHERE m.code = 22; -- Lisboa (Grande Lisboa)

INSERT INTO municipalities
SELECT municipalities_t(59, 'Torres Vedras', 'TVED', 407, 88020, 5, REF(m))
FROM municipalities m
WHERE m.code = 21; -- Leiria (Oeste)

INSERT INTO municipalities
SELECT municipalities_t(60, 'Viana do Castelo', 'VIAN', 319, 86780, 5, REF(m))
FROM municipalities m
WHERE m.code = 27; -- Viana do Castelo (Alto Minho)

INSERT INTO municipalities
SELECT municipalities_t(61, 'Aveiro', 'AVEI', 197, 86037, 5, REF(m))
FROM municipalities m
WHERE m.code = 12; -- Aveiro (Região de Aveiro)

INSERT INTO municipalities
SELECT municipalities_t(62, 'Paredes', 'PARD', 156, 86015, 5, REF(m))
FROM municipalities m
WHERE m.code = 24; -- Porto (Tâmega e Sousa)

INSERT INTO municipalities
SELECT municipalities_t(63, 'Vila do Conde', 'VCON', 149, 84872, 5, REF(m))
FROM municipalities m
WHERE m.code = 24; -- Porto (Área Metropolitana do Porto)

INSERT INTO municipalities
SELECT municipalities_t(64, 'Barreiro', 'BARR', 36, 79966, 5, REF(m))
FROM municipalities m
WHERE m.code = 26; -- Setúbal (Península de Setúbal)

INSERT INTO municipalities
SELECT municipalities_t(65, 'Loulé', 'LOUL', 763, 74410, 5, REF(m))
FROM municipalities m
WHERE m.code = 19; -- Faro (Algarve)

INSERT INTO municipalities
SELECT municipalities_t(66, 'Palmela', 'PALM', 465, 72938, 5, REF(m))
FROM municipalities m
WHERE m.code = 26; -- Setúbal (Península de Setúbal)

INSERT INTO municipalities
SELECT municipalities_t(67, 'Penafiel', 'PENF', 212, 70320, 5, REF(m))
FROM municipalities m
WHERE m.code = 24; -- Porto (Tâmega e Sousa)

INSERT INTO municipalities
SELECT municipalities_t(68, 'Faro', 'FARO', 202, 69468, 5, REF(m))
FROM municipalities m
WHERE m.code = 19; -- Faro (Algarve)

INSERT INTO municipalities
SELECT municipalities_t(69, 'Moita', 'MOIT', 55, 68950, 5, REF(m))
FROM municipalities m
WHERE m.code = 26; -- Setúbal (Península de Setúbal)

INSERT INTO municipalities
SELECT municipalities_t(70, 'Ponta Delgada', 'PDEL', 233, 68758, 5, REF(m))
FROM municipalities m
WHERE m.code = 30; -- Açores

INSERT INTO municipalities
SELECT municipalities_t(71, 'Santo Tirso', 'STIR', 136, 67826, 5, REF(m))
FROM municipalities m
WHERE m.code = 24; -- Porto (Área Metropolitana do Porto)

INSERT INTO municipalities
SELECT municipalities_t(72, 'Póvoa de Varzim', 'PVAR', 82, 67525, 5, REF(m))
FROM municipalities m
WHERE m.code = 24; -- Porto (Área Metropolitana do Porto)

INSERT INTO municipalities
SELECT municipalities_t(73, 'Oliveira de Azeméis', 'OAZE', 161, 67277, 5, REF(m))
FROM municipalities m
WHERE m.code = 12; -- Aveiro (Área Metropolitana do Porto)

INSERT INTO municipalities
SELECT municipalities_t(74, 'Portimão', 'PORM', 182, 63079, 5, REF(m))
FROM municipalities m
WHERE m.code = 19; -- Faro (Algarve)

INSERT INTO municipalities
SELECT municipalities_t(75, 'Santarém', 'SANT', 552, 61009, 5, REF(m))
FROM municipalities m
WHERE m.code = 25; -- Santarém (Lezíria do Tejo)

INSERT INTO municipalities
SELECT municipalities_t(76, 'Figueira da Foz', 'FFOZ', 379, 60670, 5, REF(m))
FROM municipalities m
WHERE m.code = 17; -- Coimbra (Região de Coimbra)

INSERT INTO municipalities
SELECT municipalities_t(77, 'Montijo', 'MONT', 348, 59197, 5, REF(m))
FROM municipalities m
WHERE m.code = 26; -- Setúbal (Península de Setúbal)

INSERT INTO municipalities
SELECT municipalities_t(78, 'Alcobaça', 'ALCO', 408, 57358, 5, REF(m))
FROM municipalities m
WHERE m.code = 21; -- Leiria (Oeste)

INSERT INTO municipalities
SELECT municipalities_t(79, 'Ovar', 'OVAR', 147, 56735, 5, REF(m))
FROM municipalities m
WHERE m.code = 12; -- Aveiro (Região de Aveiro)

INSERT INTO municipalities
SELECT municipalities_t(80, 'Paços de Ferreira', 'PFER', 71, 55981, 5, REF(m))
FROM municipalities m
WHERE m.code = 24; -- Porto (Tâmega e Sousa)

INSERT INTO municipalities
SELECT municipalities_t(81, 'Sesimbra', 'SESI', 195, 55504, 5, REF(m))
FROM municipalities m
WHERE m.code = 26; -- Setúbal (Península de Setúbal)

INSERT INTO municipalities
SELECT municipalities_t(82, 'Felgueiras', 'FELG', 115, 55429, 5, REF(m))
FROM municipalities m
WHERE m.code = 24; -- Porto (Tâmega e Sousa)

INSERT INTO municipalities
SELECT municipalities_t(83, 'Caldas da Rainha', 'CRAN', 256, 54145, 5, REF(m))
FROM municipalities m
WHERE m.code = 21; -- Leiria (Oeste)

INSERT INTO municipalities
SELECT municipalities_t(84, 'Évora', 'EVOR', 1307, 53937, 5, REF(m))
FROM municipalities m
WHERE m.code = 18; -- Évora (Alentejo Central)

INSERT INTO municipalities
SELECT municipalities_t(85, 'Castelo Branco', 'CBRA', 1439, 52913, 5, REF(m))
FROM municipalities m
WHERE m.code = 16; -- Castelo Branco (Beira Baixa)

INSERT INTO municipalities
SELECT municipalities_t(86, 'Amarante', 'AMAR', 301, 52235, 5, REF(m))
FROM municipalities m
WHERE m.code = 24; -- Porto (Tâmega e Sousa)

INSERT INTO municipalities
SELECT municipalities_t(87, 'Pombal', 'POMB', 626, 52026, 5, REF(m))
FROM municipalities m
WHERE m.code = 21; -- Leiria (Região de Leiria)

INSERT INTO municipalities
SELECT municipalities_t(88, 'Vila Real', 'VREA', 378, 49928, 5, REF(m))
FROM municipalities m
WHERE m.code = 28; -- Vila Real (Douro)

INSERT INTO municipalities
SELECT municipalities_t(89, 'Marco de Canaveses', 'MCAN', 201, 49576, 5, REF(m))
FROM municipalities m
WHERE m.code = 24; -- Porto (Tâmega e Sousa)

INSERT INTO municipalities
SELECT municipalities_t(90, 'Fafe', 'FAFE', 219, 48514, 5, REF(m))
FROM municipalities m
WHERE m.code = 14; -- Braga (Ave)

INSERT INTO municipalities
SELECT municipalities_t(91, 'Alenquer', 'ALEN', 304, 48319, 5, REF(m))
FROM municipalities m
WHERE m.code = 21; -- Leiria (Oeste)

INSERT INTO municipalities
SELECT municipalities_t(92, 'Lousada', 'LOUS', 96, 48309, 5, REF(m))
FROM municipalities m
WHERE m.code = 24; -- Porto (Tâmega e Sousa)

INSERT INTO municipalities
SELECT municipalities_t(93, 'Vila Verde', 'VVER', 228, 48150, 5, REF(m))
FROM municipalities m
WHERE m.code = 14; -- Braga (Cávado)

INSERT INTO municipalities
SELECT municipalities_t(94, 'Albufeira', 'ALBU', 141, 47524, 5, REF(m))
FROM municipalities m
WHERE m.code = 19; -- Faro (Algarve)

INSERT INTO municipalities
SELECT municipalities_t(95, 'Águeda', 'AGUE', 335, 47220, 5, REF(m))
FROM municipalities m
WHERE m.code = 12; -- Aveiro (Região de Aveiro)

INSERT INTO municipalities
SELECT municipalities_t(96, 'Ourém', 'OURE', 416, 46512, 5, REF(m))
FROM municipalities m
WHERE m.code = 25; -- Santarém (Médio Tejo)

INSERT INTO municipalities
SELECT municipalities_t(97, 'Covilhã', 'COVI', 555, 46375, 5, REF(m))
FROM municipalities m
WHERE m.code = 20; -- Guarda (Beiras e Serra da Estrela)

INSERT INTO municipalities
SELECT municipalities_t(98, 'Olhão', 'OLHA', 130, 45043, 5, REF(m))
FROM municipalities m
WHERE m.code = 19; -- Faro (Algarve)

INSERT INTO municipalities
SELECT municipalities_t(99, 'Santa Cruz', 'SCRU', 81, 44178, 5, REF(m))
FROM municipalities m
WHERE m.code = 31; -- Madeira

INSERT INTO municipalities
SELECT municipalities_t(100, 'Ílhavo', 'ILHA', 73, 42129, 5, REF(m))
FROM municipalities m
WHERE m.code = 12; -- Aveiro (Região de Aveiro)

INSERT INTO municipalities
SELECT municipalities_t(101, 'Ponte de Lima', 'PLIM', 320, 41130, 5, REF(m))
FROM municipalities m
WHERE m.code = 27; -- Viana do Castelo (Alto Minho)

INSERT INTO municipalities
SELECT municipalities_t(102, 'Marinha Grande', 'MGRAN', 187, 41011, 5, REF(m))
FROM municipalities m
WHERE m.code = 21; -- Leiria (Região de Leiria)

INSERT INTO municipalities
SELECT municipalities_t(103, 'Guarda', 'GUAR', 712, 40011, 5, REF(m))
FROM municipalities m
WHERE m.code = 20; -- Guarda (Beiras e Serra da Estrela)

INSERT INTO municipalities
SELECT municipalities_t(104, 'Trofa', 'TROF', 72, 39997, 5, REF(m))
FROM municipalities m
WHERE m.code = 24; -- Porto (Área Metropolitana do Porto)

INSERT INTO municipalities
SELECT municipalities_t(105, 'Silves', 'SILV', 680, 39497, 5, REF(m))
FROM municipalities m
WHERE m.code = 19; -- Faro (Algarve)

INSERT INTO municipalities
SELECT municipalities_t(106, 'Chaves', 'CHAV', 591, 37419, 5, REF(m))
FROM municipalities m
WHERE m.code = 28; -- Vila Real (Alto Tâmega)

INSERT INTO municipalities
SELECT municipalities_t(107, 'Esposende', 'ESPO', 95, 37129, 5, REF(m))
FROM municipalities m
WHERE m.code = 14; -- Braga (Cávado)

INSERT INTO municipalities
SELECT municipalities_t(108, 'Tomar', 'TOMA', 351, 36859, 5, REF(m))
FROM municipalities m
WHERE m.code = 25; -- Santarém (Médio Tejo)

INSERT INTO municipalities
SELECT municipalities_t(109, 'Bragança', 'BRAN', 1173, 35425, 5, REF(m))
FROM municipalities m
WHERE m.code = 15; -- Bragança (Terras de Trás-os-Montes)

INSERT INTO municipalities
SELECT municipalities_t(110, 'Cantanhede', 'CANT', 390, 34916, 5, REF(m))
FROM municipalities m
WHERE m.code = 17; -- Coimbra (Região de Coimbra)

INSERT INTO municipalities
SELECT municipalities_t(111, 'Torres Novas', 'TNOV', 270, 34719, 5, REF(m))
FROM municipalities m
WHERE m.code = 25; -- Santarém (Médio Tejo)

INSERT INTO municipalities
SELECT municipalities_t(112, 'Lagos', 'LAGO', 212, 34552, 5, REF(m))
FROM municipalities m
WHERE m.code = 19; -- Faro (Algarve)

INSERT INTO municipalities
SELECT municipalities_t(113, 'Beja', 'BEJA', 1026, 33838, 5, REF(m))
FROM municipalities m
WHERE m.code = 13; -- Beja (Baixo Alentejo)

INSERT INTO municipalities
SELECT municipalities_t(114, 'Abrantes', 'ABRA', 714, 33811, 5, REF(m))
FROM municipalities m
WHERE m.code = 25; -- Santarém (Médio Tejo)

INSERT INTO municipalities
SELECT municipalities_t(115, 'Angra do Heroísmo', 'AHER', 239, 33786, 5, REF(m))
FROM municipalities m
WHERE m.code = 30; -- Açores

INSERT INTO municipalities
SELECT municipalities_t(116, 'Odemira', 'ODEM', 1720, 33124, 5, REF(m))
FROM municipalities m
WHERE m.code = 13; -- Beja (Alentejo Litoral)

INSERT INTO municipalities
SELECT municipalities_t(117, 'Câmara de Lobos', 'CLOB', 52, 32786, 5, REF(m))
FROM municipalities m
WHERE m.code = 31; -- Madeira

INSERT INTO municipalities
SELECT municipalities_t(118, 'Espinho', 'ESPI', 21, 32393, 5, REF(m))
FROM municipalities m
WHERE m.code = 12; -- Aveiro (Área Metropolitana do Porto)

INSERT INTO municipalities
SELECT municipalities_t(119, 'Benavente', 'BENA', 521, 32323, 5, REF(m))
FROM municipalities m
WHERE m.code = 25; -- Santarém (Lezíria do Tejo)

INSERT INTO municipalities
SELECT municipalities_t(120, 'Ribeira Grande', 'RGRA', 180, 32280, 5, REF(m))
FROM municipalities m
WHERE m.code = 30; -- Açores

INSERT INTO municipalities
SELECT municipalities_t(121, 'Lourinhã', 'LORI', 147, 28383, 5, REF(m))
FROM municipalities m
WHERE m.code = 21; -- Leiria (Oeste)

INSERT INTO municipalities
SELECT municipalities_t(122, 'Santiago do Cacém', 'SCAC', 1060, 28246, 5, REF(m))
FROM municipalities m
WHERE m.code = 26; -- Setúbal (Alentejo Litoral)

INSERT INTO municipalities
SELECT municipalities_t(123, 'Anadia', 'ANAD', 216, 28205, 5, REF(m))
FROM municipalities m
WHERE m.code = 12; -- Aveiro (Região de Aveiro)

INSERT INTO municipalities
SELECT municipalities_t(124, 'Tavira', 'TAVI', 607, 27861, 5, REF(m))
FROM municipalities m
WHERE m.code = 19; -- Faro (Algarve)

INSERT INTO municipalities
SELECT municipalities_t(125, 'Peniche', 'PENI', 78, 27554, 5, REF(m))
FROM municipalities m
WHERE m.code = 21; -- Leiria (Oeste)

INSERT INTO municipalities
SELECT municipalities_t(126, 'Estarreja', 'ESTA', 108, 27097, 5, REF(m))
FROM municipalities m
WHERE m.code = 12; -- Aveiro (Região de Aveiro)

INSERT INTO municipalities
SELECT municipalities_t(127, 'Fundão', 'FUND', 700, 26981, 5, REF(m))
FROM municipalities m
WHERE m.code = 20; -- Guarda (Beiras e Serra da Estrela)

INSERT INTO municipalities
SELECT municipalities_t(128, 'Tondela', 'TOND', 371, 25824, 5, REF(m))
FROM municipalities m
WHERE m.code = 29; -- Viseu (Beiras e Serra da Estrela)

INSERT INTO municipalities
SELECT municipalities_t(129, 'Albergaria-a-Velha', 'ALVE', 158, 25779, 5, REF(m))
FROM municipalities m
WHERE m.code = 12; -- Aveiro (Região de Aveiro)

INSERT INTO municipalities
SELECT municipalities_t(130, 'Oliveira do Bairro', 'OBAI', 87, 25055, 5, REF(m))
FROM municipalities m
WHERE m.code = 12; -- Aveiro (Região de Aveiro)

INSERT INTO municipalities
SELECT municipalities_t(131, 'Lagoa', 'LAGOA', 88, 24918, 5, REF(m))
FROM municipalities m
WHERE m.code = 19; -- Faro (Algarve)

INSERT INTO municipalities
SELECT municipalities_t(132, 'Montemor-o-Velho', 'MVEL', 229, 24889, 5, REF(m))
FROM municipalities m
WHERE m.code = 17; -- Coimbra (Região de Coimbra)

INSERT INTO municipalities
SELECT municipalities_t(133, 'Vizela', 'VIZE', 24, 24529, 5, REF(m))
FROM municipalities m
WHERE m.code = 14; -- Braga (Ave)

INSERT INTO municipalities
SELECT municipalities_t(134, 'Vagos', 'VAGO', 165, 24452, 5, REF(m))
FROM municipalities m
WHERE m.code = 12; -- Aveiro (Região de Aveiro)

INSERT INTO municipalities
SELECT municipalities_t(135, 'Cartaxo', 'CART', 158, 24359, 5, REF(m))
FROM municipalities m
WHERE m.code = 25; -- Santarém (Lezíria do Tejo)

INSERT INTO municipalities
SELECT municipalities_t(136, 'Lamego', 'LAME', 165, 24129, 5, REF(m))
FROM municipalities m
WHERE m.code = 28; -- Vila Real (Douro)

INSERT INTO municipalities
SELECT municipalities_t(137, 'Porto de Mós', 'PMOS', 261, 23998, 5, REF(m))
FROM municipalities m
WHERE m.code = 21; -- Leiria (Região de Leiria)

INSERT INTO municipalities
SELECT municipalities_t(138, 'São João da Madeira', 'SJMA', 8, 23863, 5, REF(m))
FROM municipalities m
WHERE m.code = 12; -- Aveiro (Área Metropolitana do Porto)

INSERT INTO municipalities
SELECT municipalities_t(139, 'Salvaterra de Magos', 'SMAG', 243, 23337, 5, REF(m))
FROM municipalities m
WHERE m.code = 25; -- Santarém (Lezíria do Tejo)

INSERT INTO municipalities
SELECT municipalities_t(140, 'Azambuja', 'AZAM', 262, 22932, 5, REF(m))
FROM municipalities m
WHERE m.code = 25; -- Santarém (Lezíria do Tejo)

INSERT INTO municipalities
SELECT municipalities_t(141, 'Almeirim', 'ALME', 222, 22820, 5, REF(m))
FROM municipalities m
WHERE m.code = 25; -- Santarém (Lezíria do Tejo)

INSERT INTO municipalities
SELECT municipalities_t(142, 'Póvoa de Lanhoso', 'PLAN', 131, 22607, 5, REF(m))
FROM municipalities m
WHERE m.code = 14; -- Braga (Ave)

INSERT INTO municipalities
SELECT municipalities_t(143, 'Rio Maior', 'RMAI', 272, 22315, 5, REF(m))
FROM municipalities m
WHERE m.code = 25; -- Santarém (Lezíria do Tejo)

INSERT INTO municipalities
SELECT municipalities_t(144, 'Entroncamento', 'ENTR', 31, 21985, 5, REF(m))
FROM municipalities m
WHERE m.code = 25; -- Santarém (Médio Tejo)

INSERT INTO municipalities
SELECT municipalities_t(145, 'Portalegre', 'PORTA', 447, 21914, 5, REF(m))
FROM municipalities m
WHERE m.code = 23; -- Portalegre (Alto Alentejo)

INSERT INTO municipalities
SELECT municipalities_t(146, 'Seia', 'SEIA', 435, 21441, 5, REF(m))
FROM municipalities m
WHERE m.code = 20; -- Guarda (Beiras e Serra da Estrela)

INSERT INTO municipalities
SELECT municipalities_t(147, 'Mirandela', 'MIRA', 659, 21390, 5, REF(m))
FROM municipalities m
WHERE m.code = 15; -- Bragança (Terras de Trás-os-Montes)

INSERT INTO municipalities
SELECT municipalities_t(148, 'Vale de Cambra', 'VCAM', 147, 21251, 5, REF(m))
FROM municipalities m
WHERE m.code = 12; -- Aveiro (Área Metropolitana do Porto)

INSERT INTO municipalities
SELECT municipalities_t(149, 'Arouca', 'AROU', 329, 20916, 5, REF(m))
FROM municipalities m
WHERE m.code = 12; -- Aveiro (Área Metropolitana do Porto)

INSERT INTO municipalities
SELECT municipalities_t(150, 'Arcos de Valdevez', 'AVAL', 447, 20859, 5, REF(m))
FROM municipalities m
WHERE m.code = 27; -- V comentou: Iana do Castelo (Alto Minho)

INSERT INTO municipalities
SELECT municipalities_t(151, 'Elvas', 'ELVA', 631, 20412, 5, REF(m))
FROM municipalities m
WHERE m.code = 23; -- Portalegre (Alto Alentejo)

INSERT INTO municipalities
SELECT municipalities_t(152, 'Alcochete', 'ALCOH', 128, 20101, 5, REF(m))
FROM municipalities m
WHERE m.code = 26; -- Setúbal (Península de Setúbal)

INSERT INTO municipalities
SELECT municipalities_t(153, 'Mealhada', 'MEAL', 111, 19787, 5, REF(m))
FROM municipalities m
WHERE m.code = 17; -- Coimbra (Região de Coimbra)

INSERT INTO municipalities
SELECT municipalities_t(154, 'Vila da Praia da Vitória', 'VPRA', 161, 19740, 5, REF(m))
FROM municipalities m
WHERE m.code = 30; -- Açores

INSERT INTO municipalities
SELECT municipalities_t(155, 'Machico', 'MACH', 68, 19595, 5, REF(m))
FROM municipalities m
WHERE m.code = 31; -- Madeira

INSERT INTO municipalities
SELECT municipalities_t(156, 'Amares', 'AMAR2', 82, 19578, 5, REF(m))
FROM municipalities m
WHERE m.code = 14; -- Braga (Cávado)

INSERT INTO municipalities
SELECT municipalities_t(157, 'Oliveira do Hospital', 'OHOS', 234, 19464, 5, REF(m))
FROM municipalities m
WHERE m.code = 17; -- Coimbra (Região de Coimbra)

INSERT INTO municipalities
SELECT municipalities_t(158, 'Vila Real de Santo António', 'VRSA', 61, 19314, 5, REF(m))
FROM municipalities m
WHERE m.code = 19; -- Faro (Algarve)

INSERT INTO municipalities
SELECT municipalities_t(159, 'Mangualde', 'MANG', 219, 18592, 5, REF(m))
FROM municipalities m
WHERE m.code = 29; -- Viseu (Viseu Dão-Lafões)

INSERT INTO municipalities
SELECT municipalities_t(160, 'Monção', 'MONC', 211, 18032, 5, REF(m))
FROM municipalities m
WHERE m.code = 27; -- Viana do Castelo (Alto Minho)

INSERT INTO municipalities
SELECT municipalities_t(161, 'Celorico de Basto', 'CBAST', 181, 17655, 5, REF(m))
FROM municipalities m
WHERE m.code = 24; -- Porto (Tâmega e Sousa)

INSERT INTO municipalities
SELECT municipalities_t(162, 'Condeixa-a-Nova', 'CONDE', 138, 17555, 5, REF(m))
FROM municipalities m
WHERE m.code = 17; -- Coimbra (Região de Coimbra)

INSERT INTO municipalities
SELECT municipalities_t(163, 'Cinfães', 'CINF', 239, 17432, 5, REF(m))
FROM municipalities m
WHERE m.code = 24; -- Porto (Tâmega e Sousa)

INSERT INTO municipalities
SELECT municipalities_t(164, 'Lousã', 'LOUSA', 138, 17419, 5, REF(m))
FROM municipalities m
WHERE m.code = 17; -- Coimbra (Região de Coimbra)

INSERT INTO municipalities
SELECT municipalities_t(165, 'Coruche', 'CORU', 1116, 17365, 5, REF(m))
FROM municipalities m
WHERE m.code = 25; -- Santarém (Lezíria do Tejo)

INSERT INTO municipalities
SELECT municipalities_t(166, 'Soure', 'SOUR', 265, 17238, 5, REF(m))
FROM municipalities m
WHERE m.code = 17; -- Coimbra (Região de Coimbra)

INSERT INTO municipalities
SELECT municipalities_t(167, 'Baião', 'BAIA', 174, 17201, 5, REF(m))
FROM municipalities m
WHERE m.code = 24; -- Porto (Tâmega e Sousa)

INSERT INTO municipalities
SELECT municipalities_t(168, 'Batalha', 'BATA', 103, 16565, 5, REF(m))
FROM municipalities m
WHERE m.code = 21; -- Leiria (Região de Leiria)

INSERT INTO municipalities
SELECT municipalities_t(169, 'Caminha', 'CAMI', 136, 16442, 5, REF(m))
FROM municipalities m
WHERE m.code = 27; -- Viana do Castelo (Alto Minho)

INSERT INTO municipalities
SELECT municipalities_t(170, 'Montemor-o-Novo', 'MNOV', 1232, 15951, 5, REF(m))
FROM municipalities m
WHERE m.code = 18; -- Évora (Alentejo Central)

INSERT INTO municipalities
SELECT municipalities_t(171, 'Nazaré', 'NAZA', 82, 15698, 5, REF(m))
FROM municipalities m
WHERE m.code = 21; -- Leiria (Oeste)

INSERT INTO municipalities
SELECT municipalities_t(172, 'Cabeceiras de Basto', 'CBASTO', 241, 15560, 5, REF(m))
FROM municipalities m
WHERE m.code = 14; -- Braga (Ave)

INSERT INTO municipalities
SELECT municipalities_t(173, 'Castelo de Paiva', 'CPAI', 115, 15448, 5, REF(m))
FROM municipalities m
WHERE m.code = 24; -- Porto (Tâmega e Sousa)

INSERT INTO municipalities
SELECT municipalities_t(174, 'Arruda dos Vinhos', 'ARRU', 78, 15321, 5, REF(m))
FROM municipalities m
WHERE m.code = 21; -- Leiria (Oeste)

INSERT INTO municipalities
SELECT municipalities_t(175, 'Ponte de Sor', 'PSOR', 839, 15207, 5, REF(m))
FROM municipalities m
WHERE m.code = 23; -- Portalegre (Alto Alentejo)

INSERT INTO municipalities
SELECT municipalities_t(176, 'São Pedro do Sul', 'SPSUL', 348, 15197, 5, REF(m))
FROM municipalities m
WHERE m.code = 29; -- Viseu (Viseu Dão-Lafões)

INSERT INTO municipalities
SELECT municipalities_t(177, 'Lagoa (Açores)', 'LAGO2', 45, 14920, 5, REF(m))
FROM municipalities m
WHERE m.code = 30; -- Açores

INSERT INTO municipalities
SELECT municipalities_t(178, 'Sertã', 'SERT', 446, 14900, 5, REF(m))
FROM municipalities m
WHERE m.code = 16; -- Castelo Branco (Beira Baixa)

INSERT INTO municipalities
SELECT municipalities_t(179, 'Sines', 'SINE', 203, 14771, 5, REF(m))
FROM municipalities m
WHERE m.code = 26; -- Setúbal (Alentejo Litoral)

INSERT INTO municipalities
SELECT municipalities_t(180, 'Valpaços', 'VALP', 548, 14590, 5, REF(m))
FROM municipalities m
WHERE m.code = 28; -- Vila Real (Alto Tâmega)

INSERT INTO municipalities
SELECT municipalities_t(181, 'Horta', 'HORT', 173, 14466, 5, REF(m))
FROM municipalities m
WHERE m.code = 30; -- Açores

INSERT INTO municipalities
SELECT municipalities_t(182, 'Macedo de Cavaleiros', 'MCAV', 699, 14236, 5, REF(m))
FROM municipalities m
WHERE m.code = 15; -- Bragança (Terras de Trás-os-Montes)

INSERT INTO municipalities
SELECT municipalities_t(183, 'Grândola', 'GRAN', 801, 14165, 5, REF(m))
FROM municipalities m
WHERE m.code = 26; -- Setúbal (Alentejo Litoral)

INSERT INTO municipalities
SELECT municipalities_t(184, 'Valença', 'VALE', 117, 14159, 5, REF(m))
FROM municipalities m
WHERE m.code = 27; -- Viana do Castelo (Alto Minho)

INSERT INTO municipalities
SELECT municipalities_t(185, 'Bombarral', 'BOMB', 91, 13990, 5, REF(m))
FROM municipalities m
WHERE m.code = 21; -- Leiria (Oeste)

INSERT INTO municipalities
SELECT municipalities_t(186, 'Castro Daire', 'CDAI', 379, 13732, 5, REF(m))
FROM municipalities m
WHERE m.code = 29; -- Viseu (Viseu Dão-Lafões)

INSERT INTO municipalities
SELECT municipalities_t(187, 'Serpa', 'SERP', 1105, 13731, 5, REF(m))
FROM municipalities m
WHERE m.code = 13; -- Beja (Baixo Alentejo)

INSERT INTO municipalities
SELECT municipalities_t(188, 'Nelas', 'NELA', 125, 13323, 5, REF(m))
FROM municipalities m
WHERE m.code = 29; -- Viseu (Viseu Dão-Lafões)

INSERT INTO municipalities
SELECT municipalities_t(189, 'Moura', 'MOUR', 958, 13320, 5, REF(m))
FROM municipalities m
WHERE m.code = 13; -- Beja (Baixo Alentejo)

INSERT INTO municipalities
SELECT municipalities_t(190, 'Óbidos', 'OBID', 142, 13294, 5, REF(m))
FROM municipalities m
WHERE m.code = 21; -- Leiria (Oeste)

INSERT INTO municipalities
SELECT municipalities_t(191, 'Ribeira Brava', 'RBRA', 65, 13080, 5, REF(m))
FROM municipalities m
WHERE m.code = 31; -- Madeira

INSERT INTO municipalities
SELECT municipalities_t(192, 'Penacova', 'PENA', 217, 12919, 5, REF(m))
FROM municipalities m
WHERE m.code = 17; -- Coimbra (Região de Coimbra)

INSERT INTO municipalities
SELECT municipalities_t(193, 'Alcanena', 'ALCA', 127, 12750, 5, REF(m))
FROM municipalities m
WHERE m.code = 25; -- Santarém (Médio Tejo)

INSERT INTO municipalities
SELECT municipalities_t(194, 'Mira', 'MIRA2', 124, 12523, 5, REF(m))
FROM municipalities m
WHERE m.code = 17; -- Coimbra (Região de Coimbra)

INSERT INTO municipalities
SELECT municipalities_t(195, 'Gouveia', 'GOUV', 300, 12222, 5, REF(m))
FROM municipalities m
WHERE m.code = 20; -- Guarda (Beiras e Serra da Estrela)

INSERT INTO municipalities
SELECT municipalities_t(196, 'Miranda do Corvo', 'MCOR', 126, 12117, 5, REF(m))
FROM municipalities m
WHERE m.code = 17; -- Coimbra (Região de Coimbra)

INSERT INTO municipalities
SELECT municipalities_t(197, 'Vieira do Minho', 'VMIN', 216, 12066, 5, REF(m))
FROM municipalities m
WHERE m.code = 14; -- Braga (Ave)

INSERT INTO municipalities
SELECT municipalities_t(198, 'Sobral de Monte Agraço', 'SMAG2', 52, 11879, 5, REF(m))
FROM municipalities m
WHERE m.code = 21; -- Leiria (Oeste)

INSERT INTO municipalities
SELECT municipalities_t(199, 'Ansião', 'ANSI', 176, 11865, 5, REF(m))
FROM municipalities m
WHERE m.code = 21; -- Leiria (Região de Leiria)

INSERT INTO municipalities
SELECT municipalities_t(200, 'Vila Pouca de Aguiar', 'VPA', 437, 11772, 5, REF(m))
FROM municipalities m
WHERE m.code = 28; -- Vila Real (Alto Tâmega)

INSERT INTO municipalities
SELECT municipalities_t(201, 'São Brás de Alportel', 'SBRA', 153, 11604, 5, REF(m))
FROM municipalities m
WHERE m.code = 19; -- Faro (Algarve)

INSERT INTO municipalities
SELECT municipalities_t(202, 'Tábua', 'TABU', 199, 11602, 5, REF(m))
FROM municipalities m
WHERE m.code = 17; -- Coimbra (Região de Coimbra)

INSERT INTO municipalities
SELECT municipalities_t(203, 'Vendas Novas', 'VNOV', 222, 11537, 5, REF(m))
FROM municipalities m
WHERE m.code = 18; -- Évora (Alentejo Central)

INSERT INTO municipalities
SELECT municipalities_t(204, 'Arganil', 'ARGAN', 332, 11313, 5, REF(m))
FROM municipalities m
WHERE m.code = 17; -- Coimbra (Região de Coimbra)

INSERT INTO municipalities
SELECT municipalities_t(205, 'Sabugal', 'SABU', 822, 11270, 5, REF(m))
FROM municipalities m
WHERE m.code = 20; -- Guarda (Beiras e Serra da Estrela)

INSERT INTO municipalities
SELECT municipalities_t(206, 'Ponte da Barca', 'PBAR', 182, 11178, 5, REF(m))
FROM municipalities m
WHERE m.code = 27; -- Viana do Castelo (Alto Minho)

INSERT INTO municipalities
SELECT municipalities_t(207, 'Calheta', 'CALH', 111, 11162, 5, REF(m))
FROM municipalities m
WHERE m.code = 31; -- Madeira

INSERT INTO municipalities
SELECT municipalities_t(208, 'Sátão', 'SATA', 201, 11138, 5, REF(m))
FROM municipalities m
WHERE m.code = 29; -- Viseu (Viseu Dão-Lafões)

INSERT INTO municipalities
SELECT municipalities_t(209, 'Alcácer do Sal', 'ASAL', 1499, 11082, 5, REF(m))
FROM municipalities m
WHERE m.code = 26; -- Setúbal (Alentejo Litoral)

INSERT INTO municipalities
SELECT municipalities_t(210, 'Murtosa', 'MURT', 73, 11036, 5, REF(m))
FROM municipalities m
WHERE m.code = 12; -- Aveiro (Região de Aveiro)

INSERT INTO municipalities
SELECT municipalities_t(211, 'Sever do Vouga', 'SVOU', 129, 10944, 5, REF(m))
FROM municipalities m
WHERE m.code = 12; -- Aveiro (Região de Aveiro)

INSERT INTO municipalities
SELECT municipalities_t(212, 'Santa Comba Dão', 'SCDA', 111, 10925, 5, REF(m))
FROM municipalities m
WHERE m.code = 29; -- Viseu (Viseu Dão-Lafões)

INSERT INTO municipalities
SELECT municipalities_t(213, 'Vila Franca do Campo', 'VFCA', 78, 10398, 5, REF(m))
FROM municipalities m
WHERE m.code = 30; -- Açores

INSERT INTO municipalities
SELECT municipalities_t(214, 'Alijó', 'ALIJ', 297, 10324, 5, REF(m))
FROM municipalities m
WHERE m.code = 28; -- Vila Real (Douro)

INSERT INTO municipalities
SELECT municipalities_t(215, 'Reguengos de Monsaraz', 'RMON', 464, 9875, 5, REF(m))
FROM municipalities m
WHERE m.code = 18; -- Évora (Alentejo Central)

INSERT INTO municipalities
SELECT municipalities_t(216, 'Vouzela', 'VOUZ', 193, 9765, 5, REF(m))
FROM municipalities m
WHERE m.code = 29; -- Viseu (Viseu Dão-Lafões)

INSERT INTO municipalities
SELECT municipalities_t(217, 'Oliveira de Frades', 'OFRA', 147, 9763, 5, REF(m))
FROM municipalities m
WHERE m.code = 29; -- Viseu (Viseu Dão-Lafões)

INSERT INTO municipalities
SELECT municipalities_t(218, 'Resende', 'RESE', 111, 9762, 5, REF(m))
FROM municipalities m
WHERE m.code = 24; -- Porto (Tâmega e Sousa)

INSERT INTO municipalities
SELECT municipalities_t(219, 'Moimenta da Beira', 'MBEI', 219, 9733, 5, REF(m))
FROM municipalities m
WHERE m.code = 28; -- Vila Real (Douro)

INSERT INTO municipalities
SELECT municipalities_t(220, 'Vila Nova de Cerveira', 'VNCE', 108, 9327, 5, REF(m))
FROM municipalities m
WHERE m.code = 27; -- Viana do Castelo (Alto Minho)

INSERT INTO municipalities
SELECT municipalities_t(221, 'Montalegre', 'MONTA', 806, 9142, 5, REF(m))
FROM municipalities m
WHERE m.code = 28; -- Vila Real (Alto Tâmega)

INSERT INTO municipalities
SELECT municipalities_t(222, 'Carregal do Sal', 'CSAL', 116, 9177, 5, REF(m))
FROM municipalities m
WHERE m.code = 29; -- Viseu (Viseu Dão-Lafões)

INSERT INTO municipalities
SELECT municipalities_t(223, 'Mortágua', 'MORT', 251, 9059, 5, REF(m))
FROM municipalities m
WHERE m.code = 17; -- Coimbra (Região de Coimbra)

INSERT INTO municipalities
SELECT municipalities_t(224, 'Aljustrel', 'ALJU', 458, 8922, 5, REF(m))
FROM municipalities m
WHERE m.code = 13; -- Beja (Baixo Alentejo)

INSERT INTO municipalities
SELECT municipalities_t(225, 'Paredes de Coura', 'PCOU', 138, 8709, 5, REF(m))
FROM municipalities m
WHERE m.code = 27; -- Viana do Castelo (Alto Minho)

INSERT INTO municipalities
SELECT municipalities_t(226, 'Ponta do Sol', 'PSOL', 46, 8709, 5, REF(m))
FROM municipalities m
WHERE m.code = 31; -- Madeira

INSERT INTO municipalities
SELECT municipalities_t(227, 'Chamusca', 'CHAM', 746, 8531, 5, REF(m))
FROM municipalities m
WHERE m.code = 25; -- Santarém (Lezíria do Tejo)

INSERT INTO municipalities
SELECT municipalities_t(228, 'Idanha-a-Nova', 'INOV', 1416, 8492, 5, REF(m))
FROM municipalities m
WHERE m.code = 16; -- Castelo Branco (Beira Baixa)

INSERT INTO municipalities
SELECT municipalities_t(229, 'Trancoso', 'TRAN', 361, 8313, 5, REF(m))
FROM municipalities m
WHERE m.code = 20; -- Guarda (Beiras e Serra da Estrela)

INSERT INTO municipalities
SELECT municipalities_t(230, 'Mogadouro', 'MOGA', 760, 8237, 5, REF(m))
FROM municipalities m
WHERE m.code = 15; -- Bragança (Terras de Trás-os-Montes)

INSERT INTO municipalities
SELECT municipalities_t(231, 'Ferreira do Zêzere', 'FZEZ', 190, 8018, 5, REF(m))
FROM municipalities m
WHERE m.code = 25; -- Santarém (Médio Tejo)

INSERT INTO municipalities
SELECT municipalities_t(232, 'Campo Maior', 'CMAI', 247, 7916, 5, REF(m))
FROM municipalities m
WHERE m.code = 23; -- Portalegre (Alto Alentejo)

INSERT INTO municipalities
SELECT municipalities_t(233, 'Ferreira do Alentejo', 'FALE', 648, 7912, 5, REF(m))
FROM municipalities m
WHERE m.code = 13; -- Beja (Baixo Alentejo)

INSERT INTO municipalities
SELECT municipalities_t(234, 'Pinhel', 'PINH', 484, 7849, 5, REF(m))
FROM municipalities m
WHERE m.code = 20; -- Guarda (Beiras e Serra da Estrela)

INSERT INTO municipalities
SELECT municipalities_t(235, 'Vila Nova da Barquinha', 'VBAR', 49, 7783, 5, REF(m))
FROM municipalities m
WHERE m.code = 25; -- Santarém (Médio Tejo)

INSERT INTO municipalities
SELECT municipalities_t(236, 'Tarouca', 'TARO', 100, 7615, 5, REF(m))
FROM municipalities m
WHERE m.code = 28; -- Vila Real (Douro)

INSERT INTO municipalities
SELECT municipalities_t(237, 'Melgaço', 'MELG', 238, 7599, 5, REF(m))
FROM municipalities m
WHERE m.code = 27; -- Viana do Castelo (Alto Minho)

INSERT INTO municipalities
SELECT municipalities_t(238, 'Vinhais', 'VINH', 694, 7450, 5, REF(m))
FROM municipalities m
WHERE m.code = 15; -- Bragança (Terras de Trás-os-Montes)

INSERT INTO municipalities
SELECT municipalities_t(239, 'Penalva do Castelo', 'PCAS', 134, 7342, 5, REF(m))
FROM municipalities m
WHERE m.code = 29; -- Viseu (Viseu Dão-Lafões)

INSERT INTO municipalities
SELECT municipalities_t(240, 'Alpiarça', 'ALPI', 95, 7331, 5, REF(m))
FROM municipalities m
WHERE m.code = 25; -- Santarém (Lezíria do Tejo)

INSERT INTO municipalities
SELECT municipalities_t(241, 'Vila Viçosa', 'VVIC', 194, 7300, 5, REF(m))
FROM municipalities m
WHERE m.code = 18; -- Évora (Alentejo Central)

INSERT INTO municipalities
SELECT municipalities_t(242, 'Vila Nova de Poiares', 'VPOI', 84, 7140, 5, REF(m))
FROM municipalities m
WHERE m.code = 17; -- Coimbra (Região de Coimbra)

INSERT INTO municipalities
SELECT municipalities_t(243, 'Proença-a-Nova', 'PNOV', 395, 7091, 5, REF(m))
FROM municipalities m
WHERE m.code = 16; -- Castelo Branco (Beira Baixa)

INSERT INTO municipalities
SELECT municipalities_t(244, 'Castro Verde', 'CVRD', 569, 6965, 5, REF(m))
FROM municipalities m
WHERE m.code = 13; -- Beja (Baixo Alentejo)

INSERT INTO municipalities
SELECT municipalities_t(245, 'Castro Marim', 'CMAR', 301, 6819, 5, REF(m))
FROM municipalities m
WHERE m.code = 19; -- Faro (Algarve)

INSERT INTO municipalities
SELECT municipalities_t(246, 'Arraiolos', 'ARRA', 683, 6778, 5, REF(m))
FROM municipalities m
WHERE m.code = 18; -- Évora (Alentejo Central)

INSERT INTO municipalities
SELECT municipalities_t(247, 'São João da Pesqueira', 'SJPE', 266, 6772, 5, REF(m))
FROM municipalities m
WHERE m.code = 28; -- Vila Real (Douro)

INSERT INTO municipalities
SELECT municipalities_t(248, 'Torre de Moncorvo', 'TMON', 531, 6737, 5, REF(m))
FROM municipalities m
WHERE m.code = 28; -- Vila Real (Douro)

INSERT INTO municipalities
SELECT municipalities_t(249, 'Almodôvar', 'ALMO', 777, 6694, 5, REF(m))
FROM municipalities m
WHERE m.code = 13; -- Beja (Baixo Alentejo)

INSERT INTO municipalities
SELECT municipalities_t(250, 'Celorico da Beira', 'CBEI', 247, 6605, 5, REF(m))
FROM municipalities m
WHERE m.code = 20; -- Guarda (Beiras e Serra da Estrela)

INSERT INTO municipalities
SELECT municipalities_t(251, 'Madalena', 'MADA', 147, 6533, 5, REF(m))
FROM municipalities m
WHERE m.code = 30; -- Açores

INSERT INTO municipalities
SELECT municipalities_t(252, 'Santana', 'SANA', 95, 6488, 5, REF(m))
FROM municipalities m
WHERE m.code = 31; -- Madeira

INSERT INTO municipalities
SELECT municipalities_t(253, 'Mondim de Basto', 'MBAST', 172, 6405, 5, REF(m))
FROM municipalities m
WHERE m.code = 14; -- Braga (Ave)

INSERT INTO municipalities
SELECT municipalities_t(254, 'Mação', 'MACA', 400, 6403, 5, REF(m))
FROM municipalities m
WHERE m.code = 25; -- Santarém (Médio Tejo)

INSERT INTO municipalities
SELECT municipalities_t(255, 'Borba', 'BORB', 145, 6398, 5, REF(m))
FROM municipalities m
WHERE m.code = 18; -- Évora (Alentejo Central)

INSERT INTO municipalities
SELECT municipalities_t(256, 'Terras de Bouro', 'TBOU', 277, 6388, 5, REF(m))
FROM municipalities m
WHERE m.code = 14; -- Braga (Cávado)

INSERT INTO municipalities
SELECT municipalities_t(257, 'Vila Nova de Foz Côa', 'VFCO', 398, 6369, 5, REF(m))
FROM municipalities m
WHERE m.code = 28; -- Vila Real (Douro)

INSERT INTO municipalities
SELECT municipalities_t(258, 'Aljezur', 'ALJE', 323, 6362, 5, REF(m))
FROM municipalities m
WHERE m.code = 19; -- Faro (Algarve)

INSERT INTO municipalities
SELECT municipalities_t(259, 'Alvaiázere', 'ALVA', 160, 6355, 5, REF(m))
FROM municipalities m
WHERE m.code = 21; -- Leiria (Região de Leiria)

INSERT INTO municipalities
SELECT municipalities_t(260, 'Redondo', 'REDO', 369, 6299, 5, REF(m))
FROM municipalities m
WHERE m.code = 18; -- Évora (Alentejo Central)

INSERT INTO municipalities
SELECT municipalities_t(261, 'Miranda do Douro', 'MDOU', 487, 6298, 5, REF(m))
FROM municipalities m
WHERE m.code = 15; -- Bragança (Terras de Trás-os-Montes)

INSERT INTO municipalities
SELECT municipalities_t(262, 'Belmonte', 'BELM', 118, 6216, 5, REF(m))
FROM municipalities m
WHERE m.code = 20; -- Guarda (Beiras e Serra da Estrela)

INSERT INTO municipalities
SELECT municipalities_t(263, 'Mértola', 'MERT', 1292, 6137, 5, REF(m))
FROM municipalities m
WHERE m.code = 13; -- Beja (Baixo Alentejo)

INSERT INTO municipalities
SELECT municipalities_t(264, 'Vila Flor', 'VFLOR', 265, 6039, 5, REF(m))
FROM municipalities m
WHERE m.code = 15; -- Bragança (Terras de Trás-os-Montes)

INSERT INTO municipalities
SELECT municipalities_t(265, 'Santa Marta de Penaguião', 'SMPE', 69, 5983, 5, REF(m))
FROM municipalities m
WHERE m.code = 28; -- Vila Real (Douro)

INSERT INTO municipalities
SELECT municipalities_t(266, 'Vila do Bispo', 'VBIS', 179, 5935, 5, REF(m))
FROM municipalities m
WHERE m.code = 19; -- Faro (Algarve)

INSERT INTO municipalities
SELECT municipalities_t(267, 'Povoação', 'POVO', 106, 5867, 5, REF(m))
FROM municipalities m
WHERE m.code = 30; -- Açores

INSERT INTO municipalities
SELECT municipalities_t(268, 'Ribeira de Pena', 'RPEN', 217, 5861, 5, REF(m))
FROM municipalities m
WHERE m.code = 28; -- Vila Real (Alto Tâmega)

INSERT INTO municipalities
SELECT municipalities_t(269, 'Sernancelhe', 'SERN', 228, 5793, 5, REF(m))
FROM municipalities m
WHERE m.code = 28; -- Vila Real (Douro)

INSERT INTO municipalities
SELECT municipalities_t(270, 'Portel', 'PORTE', 601, 5737, 5, REF(m))
FROM municipalities m
WHERE m.code = 18; -- Évora (Alentejo Central)

INSERT INTO municipalities
SELECT municipalities_t(271, 'Nisa', 'NISA', 575, 5685, 5, REF(m))
FROM municipalities m
WHERE m.code = 23; -- Portalegre (Alto Alentejo)

INSERT INTO municipalities
SELECT municipalities_t(272, 'Almeida', 'ALMEI', 517, 5676, 5, REF(m))
FROM municipalities m
WHERE m.code = 20; -- Guarda (Beiras e Serra da Estrela)

INSERT INTO municipalities
SELECT municipalities_t(273, 'Armamar', 'ARMA', 117, 5650, 5, REF(m))
FROM municipalities m
WHERE m.code = 28; -- Vila Real (Douro)

INSERT INTO municipalities
SELECT municipalities_t(274, 'Sabrosa', 'SABR', 156, 5634, 5, REF(m))
FROM municipalities m
WHERE m.code = 28; -- Vila Real (Douro)

INSERT INTO municipalities
SELECT municipalities_t(275, 'Penela', 'PENE', 134, 5611, 5, REF(m))
FROM municipalities m
WHERE m.code = 17; -- Coimbra (Região de Coimbra)

INSERT INTO municipalities
SELECT municipalities_t(276, 'Viana do Alentejo', 'VALE2', 393, 5538, 5, REF(m))
FROM municipalities m
WHERE m.code = 18; -- Évora (Alentejo Central)

INSERT INTO municipalities
SELECT municipalities_t(277, 'Vila do Porto', 'VPO', 96, 5502, 5, REF(m))
FROM municipalities m
WHERE m.code = 30; -- Açores

INSERT INTO municipalities
SELECT municipalities_t(278, 'Carrazeda de Ansiães', 'CANS', 279, 5390, 5, REF(m))
FROM municipalities m
WHERE m.code = 28; -- Vila Real (Douro)

INSERT INTO municipalities
SELECT municipalities_t(279, 'Monchique', 'MONQ', 395, 5323, 5, REF(m))
FROM municipalities m
WHERE m.code = 19; -- Faro (Algarve)

INSERT INTO municipalities
SELECT municipalities_t(280, 'Porto Santo', 'PSAN', 42, 5562, 5, REF(m))
FROM municipalities m
WHERE m.code = 31; -- Madeira

INSERT INTO municipalities
SELECT municipalities_t(281, 'Aguiar da Beira', 'ABEI', 206, 5302, 5, REF(m))
FROM municipalities m
WHERE m.code = 29; -- Viseu (Viseu Dão-Lafões)

INSERT INTO municipalities
SELECT municipalities_t(282, 'Figueiró dos Vinhos', 'FVIN', 173, 5270, 5, REF(m))
FROM municipalities m
WHERE m.code = 21; -- Leiria (Região de Leiria)

INSERT INTO municipalities
SELECT municipalities_t(283, 'Murça', 'MURC', 189, 5256, 5, REF(m))
FROM municipalities m
WHERE m.code = 28; -- Vila Real (Douro)

INSERT INTO municipalities
SELECT municipalities_t(284, 'Vidigueira', 'VIDI', 316, 5229, 5, REF(m))
FROM municipalities m
WHERE m.code = 13; -- Beja (Baixo Alentejo)

INSERT INTO municipalities
SELECT municipalities_t(285, 'Tabuaço', 'TABU2', 133, 5052, 5, REF(m))
FROM municipalities m
WHERE m.code = 28; -- Vila Real (Douro)

INSERT INTO municipalities
SELECT municipalities_t(286, 'Figueira de Castelo Rodrigo', 'FCRO', 508, 5044, 5, REF(m))
FROM municipalities m
WHERE m.code = 20; -- Guarda (Beiras e Serra da Estrela)

INSERT INTO municipalities
SELECT municipalities_t(287, 'Alandroal', 'ALAN', 544, 4996, 5, REF(m))
FROM municipalities m
WHERE m.code = 18; -- Évora (Alentejo Central)

INSERT INTO municipalities
SELECT municipalities_t(288, 'São Vicente', 'SVIC', 78, 4972, 5, REF(m))
FROM municipalities m
WHERE m.code = 31; -- Madeira

INSERT INTO municipalities
SELECT municipalities_t(289, 'Velas', 'VELA', 117, 4952, 5, REF(m))
FROM municipalities m
WHERE m.code = 30; -- Açores

INSERT INTO municipalities
SELECT municipalities_t(290, 'Oleiros', 'OLEI', 471, 4886, 5, REF(m))
FROM municipalities m
WHERE m.code = 16; -- Castelo Branco (Beira Baixa)

INSERT INTO municipalities
SELECT municipalities_t(291, 'Boticas', 'BOTI', 322, 4885, 5, REF(m))
FROM municipalities m
WHERE m.code = 28; -- Vila Real (Alto Tâmega)

INSERT INTO municipalities
SELECT municipalities_t(292, 'Ourique', 'OURI', 663, 4829, 5, REF(m))
FROM municipalities m
WHERE m.code = 13; -- Beja (Baixo Alentejo)

INSERT INTO municipalities
SELECT municipalities_t(293, 'Penamacor', 'PMAC', 563, 4797, 5, REF(m))
FROM municipalities m
WHERE m.code = 16; -- Castelo Branco (Beira Baixa)

INSERT INTO municipalities
SELECT municipalities_t(294, 'Vila Nova de Paiva', 'VNPA', 175, 4753, 5, REF(m))
FROM municipalities m
WHERE m.code = 29; -- Viseu (Viseu Dão-Lafões)

INSERT INTO municipalities
SELECT municipalities_t(295, 'Mêda', 'MEDA', 205, 4572, 5, REF(m))
FROM municipalities m
WHERE m.code = 20; -- Guarda (Beiras e Serra da Estrela)

INSERT INTO municipalities
SELECT municipalities_t(296, 'Cuba', 'CUBA', 171, 4471, 5, REF(m))
FROM municipalities m
WHERE m.code = 13; -- Beja (Baixo Alentejo)

INSERT INTO municipalities
SELECT municipalities_t(297, 'Nordeste', 'NORD', 101, 4436, 5, REF(m))
FROM municipalities m
WHERE m.code = 30; -- Açores

INSERT INTO municipalities
SELECT municipalities_t(298, 'Lajes do Pico', 'LPIC', 126, 4403, 5, REF(m))
FROM municipalities m
WHERE m.code = 30; -- Açores

INSERT INTO municipalities
SELECT municipalities_t(299, 'Sousel', 'SOUS', 279, 4401, 5, REF(m))
FROM municipalities m
WHERE m.code = 23; -- Portalegre (Alto Alentejo)

INSERT INTO municipalities
SELECT municipalities_t(300, 'Fornos de Algodres', 'FALG', 131, 4383, 5, REF(m))
FROM municipalities m
WHERE m.code = 20; -- Guarda (Beiras e Serra da Estrela)

INSERT INTO municipalities
SELECT municipalities_t(301, 'Alfândega da Fé', 'AFÉ', 321, 4222, 5, REF(m))
FROM municipalities m
WHERE m.code = 15; -- Bragança (Terras de Trás-os-Montes)

INSERT INTO municipalities
SELECT municipalities_t(302, 'Mora', 'MORA', 443, 4155, 5, REF(m))
FROM municipalities m
WHERE m.code = 18; -- Évora (Alentejo Central)

INSERT INTO municipalities
SELECT municipalities_t(303, 'Pampilhosa da Serra', 'PSER', 396, 4138, 5, REF(m))
FROM municipalities m
WHERE m.code = 17; -- Coimbra (Região de Coimbra)

INSERT INTO municipalities
SELECT municipalities_t(304, 'Santa Cruz da Graciosa', 'SCGR', 60, 4100, 5, REF(m))
FROM municipalities m
WHERE m.code = 30; -- Açores

INSERT INTO municipalities
SELECT municipalities_t(305, 'Constância', 'CONS', 55, 3958, 5, REF(m))
FROM municipalities m
WHERE m.code = 25; -- Santarém (Médio Tejo)

INSERT INTO municipalities
SELECT municipalities_t(306, 'Avis', 'AVIS', 605, 3802, 5, REF(m))
FROM municipalities m
WHERE m.code = 23; -- Portalegre (Alto Alentejo)

INSERT INTO municipalities
SELECT municipalities_t(307, 'Góis', 'GOIS', 263, 3800, 5, REF(m))
FROM municipalities m
WHERE m.code = 17; -- Coimbra (Região de Coimbra)

INSERT INTO municipalities
SELECT municipalities_t(308, 'Pedrógão Grande', 'PGRA', 128, 3627, 5, REF(m))
FROM municipalities m
WHERE m.code = 21; -- Leiria (Região de Leiria)

INSERT INTO municipalities
SELECT municipalities_t(309, 'Sardoal', 'SARD', 92, 3625, 5, REF(m))
FROM municipalities m
WHERE m.code = 25; -- Santarém (Médio Tejo)

INSERT INTO municipalities
SELECT municipalities_t(310, 'Vila Velha de Ródão', 'VROD', 329, 3515, 5, REF(m))
FROM municipalities m
WHERE m.code = 16; -- Castelo Branco (Beira Baixa)

INSERT INTO municipalities
SELECT municipalities_t(311, 'Calheta (Açores)', 'CALHA', 126, 3494, 5, REF(m))
FROM municipalities m
WHERE m.code = 30; -- Açores

INSERT INTO municipalities
SELECT municipalities_t(312, 'Mesão Frio', 'MFRI', 26, 3485, 5, REF(m))
FROM municipalities m
WHERE m.code = 28; -- Vila Real (Douro)

INSERT INTO municipalities
SELECT municipalities_t(313, 'Vila de Rei', 'VREI', 191, 3442, 5, REF(m))
FROM municipalities m
WHERE m.code = 16; -- Castelo Branco (Beira Baixa)

INSERT INTO municipalities
SELECT municipalities_t(314, 'São Roque do Pico', 'SRPI', 142, 3411, 5, REF(m))
FROM municipalities m
WHERE m.code = 30; -- Açores

INSERT INTO municipalities
SELECT municipalities_t(315, 'Gavião', 'GAVI', 294, 3324, 5, REF(m))
FROM municipalities m
WHERE m.code = 23; -- Portalegre (Alto Alentejo)

INSERT INTO municipalities
SELECT municipalities_t(316, 'Crato', 'CRAT', 398, 3275, 5, REF(m))
FROM municipalities m
WHERE m.code = 23; -- Portalegre (Alto Alentejo)

INSERT INTO municipalities
SELECT municipalities_t(317, 'Castelo de Vide', 'CVID', 265, 3197, 5, REF(m))
FROM municipalities m
WHERE m.code = 23; -- Portalegre (Alto Alentejo)

INSERT INTO municipalities
SELECT municipalities_t(318, 'Alter do Chão', 'ACHA', 362, 3180, 5, REF(m))
FROM municipalities m
WHERE m.code = 23; -- Portalegre (Alto Alentejo)

INSERT INTO municipalities
SELECT municipalities_t(319, 'Freixo de Espada à Cinta', 'FESP', 244, 3139, 5, REF(m))
FROM municipalities m
WHERE m.code = 28; -- Vila Real (Douro)

INSERT INTO municipalities
SELECT municipalities_t(320, 'Marvão', 'MARV', 154, 3024, 5, REF(m))
FROM municipalities m
WHERE m.code = 23; -- Portalegre (Alto Alentejo)

INSERT INTO municipalities
SELECT municipalities_t(321, 'Monforte', 'MONF', 420, 3002, 5, REF(m))
FROM municipalities m
WHERE m.code = 23; -- Portalegre (Alto Alentejo)

INSERT INTO municipalities
SELECT municipalities_t(322, 'Fronteira', 'FRON', 248, 2974, 5, REF(m))
FROM municipalities m
WHERE m.code = 23; -- Portalegre (Alto Alentejo)

INSERT INTO municipalities
SELECT municipalities_t(323, 'Manteigas', 'MANT', 122, 2938, 5, REF(m))
FROM municipalities m
WHERE m.code = 20; -- Guarda (Beiras e Serra da Estrela)

INSERT INTO municipalities
SELECT municipalities_t(324, 'Penedono', 'PENE2', 133, 2804, 5, REF(m))
FROM municipalities m
WHERE m.code = 28; -- Vila Real (Douro)

INSERT INTO municipalities
SELECT municipalities_t(325, 'Arronches', 'ARRO', 314, 2768, 5, REF(m))
FROM municipalities m
WHERE m.code = 23; -- Portalegre (Alto Alentejo)

INSERT INTO municipalities
SELECT municipalities_t(326, 'Castanheira de Pera', 'CPER', 66, 2710, 5, REF(m))
FROM municipalities m
WHERE m.code = 21; -- Leiria (Região de Leiria)

INSERT INTO municipalities
SELECT municipalities_t(327, 'Porto Moniz', 'PMON', 82, 2528, 5, REF(m))
FROM municipalities m
WHERE m.code = 31; -- Madeira

INSERT INTO municipalities
SELECT municipalities_t(328, 'Mourão', 'MOUR2', 278, 2424, 5, REF(m))
FROM municipalities m
WHERE m.code = 18; -- Évora (Alentejo Central)

INSERT INTO municipalities
SELECT municipalities_t(329, 'Alcoutim', 'ALCOU', 575, 2413, 5, REF(m))
FROM municipalities m
WHERE m.code = 19; -- Faro (Algarve)

INSERT INTO municipalities
SELECT municipalities_t(330, 'Alvito', 'ALVI', 264, 2279, 5, REF(m))
FROM municipalities m
WHERE m.code = 13; -- Beja (Baixo Alentejo)

INSERT INTO municipalities
SELECT municipalities_t(331, 'Santa Cruz das Flores', 'SCFL', 70, 2098, 5, REF(m))
FROM municipalities m
WHERE m.code = 30; -- Açores

INSERT INTO municipalities
SELECT municipalities_t(332, 'Lajes das Flores', 'LFLO', 70, 1446, 5, REF(m))
FROM municipalities m
WHERE m.code = 30; -- Açores

INSERT INTO municipalities
SELECT municipalities_t(333, 'Barrancos', 'BARR2', 168, 1430, 5, REF(m))
FROM municipalities m
WHERE m.code = 13; -- Beja (Baixo Alentejo)

INSERT INTO municipalities
SELECT municipalities_t(334, 'Corvo', 'CORV', 17, 435, 5, REF(m))
FROM municipalities m
WHERE m.code = 30; -- Açores

