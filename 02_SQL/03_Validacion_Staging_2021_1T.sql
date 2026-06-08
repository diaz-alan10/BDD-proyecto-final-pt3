USE BD_ENOE_Centralizada;
GO

-- Total de registros cargados

SELECT COUNT(*) AS Total_Registros
FROM stg_sdem_2021_1t;
GO

-- Validación visual de datos

SELECT TOP 20 *
FROM stg_sdem_2021_1t;
GO

