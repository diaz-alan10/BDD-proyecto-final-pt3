SELECT
    h.anio,
    s.DESCRIP AS sexo,
    p.DESCRIP AS posicion_ocupacional,
    COUNT(*) AS total_personas
FROM hechos_ocupacion h
INNER JOIN sexo s
    ON h.sex = s.CVE
INNER JOIN pos_ocu p
    ON h.pos_ocu = p.CVE
GROUP BY
    h.anio,
    s.DESCRIP,
    p.DESCRIP
ORDER BY
    h.anio,
    s.DESCRIP;