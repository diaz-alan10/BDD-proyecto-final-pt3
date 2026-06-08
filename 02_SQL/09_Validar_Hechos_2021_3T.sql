USE BD_ENOE_Centralizada;
GO

SELECT COUNT(*) AS total_staging_2021_3t
FROM stg_sdem_2021_3t;
GO

SELECT COUNT(*) AS total_hechos_2021_3t
FROM hechos_ocupacion
WHERE anio = 2021
  AND trimestre = 3;
GO