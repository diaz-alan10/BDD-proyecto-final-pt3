SELECT
    D.anio,
    D.trimestre,
    r.DESCRIP AS sector_economico,
    COUNT(*) AS total_personas
FROM
(
    SELECT anio, trimestre, rama
    FROM CENTRAL_ENOE.BD_ENOE_Nodo_A.dbo.hechos_ocupacion

    UNION ALL

    SELECT anio, trimestre, rama
    FROM BD_ENOE_Nodo_B.dbo.hechos_ocupacion
) D

INNER JOIN CENTRAL_ENOE.BD_ENOE_Centralizada.dbo.rama r
    ON D.rama = r.CVE

GROUP BY
    D.anio,
    D.trimestre,
    r.DESCRIP

ORDER BY
    D.anio,
    D.trimestre,
    r.DESCRIP;
GO