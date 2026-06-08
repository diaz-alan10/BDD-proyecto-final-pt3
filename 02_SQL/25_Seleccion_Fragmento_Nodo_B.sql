USE BD_ENOE_Centralizada;
GO

SELECT
    anio,
    trimestre,
    upm,
    n_pro_viv,
    n_hog,
    n_ren,
    ent,
    sex,
    eda,
    clase1,
    clase2,
    niv_ins,
    pos_ocu,
    rama
FROM hechos_ocupacion
WHERE anio IN (2023, 2024, 2025);
GO