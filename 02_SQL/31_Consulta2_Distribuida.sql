SELECT
    D.anio,
    e.DESCRIP AS entidad,
    c.DESCRIP AS condicion_ocupacion,
    COUNT(*) AS total_personas
FROM
(
    SELECT anio, ent, clase2
    FROM CENTRAL_ENOE.BD_ENOE_Nodo_A.dbo.hechos_ocupacion

    UNION ALL

    SELECT anio, ent, clase2
    FROM BD_ENOE_Nodo_B.dbo.hechos_ocupacion
) AS D
INNER JOIN CENTRAL_ENOE.BD_ENOE_Centralizada.dbo.entidad e
    ON D.ent = e.CVE
INNER JOIN CENTRAL_ENOE.BD_ENOE_Centralizada.dbo.clase2 c
    ON D.clase2 = c.CVE
GROUP BY
    D.anio,
    e.DESCRIP,
    c.DESCRIP
ORDER BY
    D.anio,
    e.DESCRIP,
    c.DESCRIP;
GO