USE BD_ENOE_Centralizada;
GO

SELECT 
    anio,
    trimestre,
    COUNT(*) AS total_registros
FROM hechos_ocupacion
GROUP BY anio, trimestre
ORDER BY anio, trimestre;
GO

SELECT 
    COUNT(*) AS total_historico
FROM hechos_ocupacion;
GO