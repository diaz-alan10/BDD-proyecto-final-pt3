USE BD_ENOE_Centralizada;
GO

SELECT COUNT(*) AS total_staging_2021_1t
FROM stg_sdem_2021_1t;
GO

SELECT COUNT(*) AS total_hechos_2021_1t
FROM hechos_ocupacion
WHERE anio = 2021
  AND trimestre = 1;
GO