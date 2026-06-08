SELECT
    h.anio,
    h.trimestre,
    r.DESCRIP AS sector_economico,
    COUNT(*) AS total_personas
FROM hechos_ocupacion h
INNER JOIN rama r
    ON h.rama = r.CVE
GROUP BY
    h.anio,
    h.trimestre,
    r.DESCRIP
ORDER BY
    h.anio,
    h.trimestre;