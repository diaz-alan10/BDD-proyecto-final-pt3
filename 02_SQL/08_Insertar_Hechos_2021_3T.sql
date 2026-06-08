USE BD_ENOE_Centralizada;
GO

INSERT INTO hechos_ocupacion (
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
)
SELECT
    2021 AS anio,
    3 AS trimestre,
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
FROM stg_sdem_2021_3t;
GO