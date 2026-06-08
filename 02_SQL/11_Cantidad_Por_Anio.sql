USE BD_ENOE_Centralizada;
GO

SELECT 
    anio,
    COUNT(*) AS total_por_anio
FROM hechos_ocupacion
GROUP BY anio
ORDER BY anio;
GO