SELECT
    D.anio,
    n.DESCRIP AS nivel_educativo,
    c.DESCRIP AS condicion_ocupacion,
    COUNT(*) AS total_personas
FROM
(
    SELECT anio, niv_ins, clase2
    FROM CENTRAL_ENOE.BD_ENOE_Nodo_A.dbo.hechos_ocupacion

    UNION ALL

    SELECT anio, niv_ins, clase2
    FROM BD_ENOE_Nodo_B.dbo.hechos_ocupacion
) D

INNER JOIN CENTRAL_ENOE.BD_ENOE_Centralizada.dbo.niv_ins n
    ON D.niv_ins = n.CVE

INNER JOIN CENTRAL_ENOE.BD_ENOE_Centralizada.dbo.clase2 c
    ON D.clase2 = c.CVE

GROUP BY
    D.anio,
    n.DESCRIP,
    c.DESCRIP

ORDER BY
    D.anio,
    n.DESCRIP,
    c.DESCRIP;
GO