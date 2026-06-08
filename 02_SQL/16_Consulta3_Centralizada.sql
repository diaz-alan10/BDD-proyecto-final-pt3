SELECT
    h.anio,
    n.DESCRIP AS nivel_educativo,
    c.DESCRIP AS condicion_ocupacion,
    COUNT(*) AS total_personas
FROM hechos_ocupacion h
INNER JOIN niv_ins n
    ON h.niv_ins = n.CVE
INNER JOIN clase2 c
    ON h.clase2 = c.CVE
GROUP BY
    h.anio,
    n.DESCRIP,
    c.DESCRIP
ORDER BY
    h.anio,
    n.DESCRIP;