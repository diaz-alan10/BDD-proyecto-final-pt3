USE BD_ENOE_Centralizada;
GO

SELECT TOP 20
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
FROM stg_sdem_2021_1t;
GO