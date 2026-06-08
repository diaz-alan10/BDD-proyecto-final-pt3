USE BD_ENOE_Nodo_A;
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
FROM BD_ENOE_Centralizada.dbo.hechos_ocupacion
WHERE anio IN (2021, 2022);
GO