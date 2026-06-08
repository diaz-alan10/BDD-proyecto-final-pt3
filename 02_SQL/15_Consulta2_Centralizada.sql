SELECT
    h.anio,
    e.DESCRIP AS entidad,
    c.DESCRIP AS condicion_ocupacion,
    COUNT(*) AS total_personas
FROM hechos_ocupacion h
INNER JOIN entidad e
    ON h.ent = e.CVE
INNER JOIN clase2 c
    ON h.clase2 = c.CVE
GROUP BY
    h.anio,
    e.DESCRIP,
    c.DESCRIP
ORDER BY
    h.anio,
    e.DESCRIP;