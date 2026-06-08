SELECT
    h.anio,
    h.trimestre,
    c.DESCRIP AS condicion_actividad,
    COUNT(*) AS total_personas
FROM hechos_ocupacion h
INNER JOIN clase1 c
    ON h.clase1 = c.CVE
GROUP BY
    h.anio,
    h.trimestre,
    c.DESCRIP
ORDER BY
    h.anio,
    h.trimestre;