SELECT
    D.anio,
    s.DESCRIP AS sexo,
    p.DESCRIP AS posicion_ocupacional,
    COUNT(*) AS total_personas
FROM
(
    SELECT anio, sex, pos_ocu
    FROM CENTRAL_ENOE.BD_ENOE_Nodo_A.dbo.hechos_ocupacion

    UNION ALL

    SELECT anio, sex, pos_ocu
    FROM BD_ENOE_Nodo_B.dbo.hechos_ocupacion
) D

INNER JOIN CENTRAL_ENOE.BD_ENOE_Centralizada.dbo.sexo s
    ON D.sex = s.CVE

INNER JOIN CENTRAL_ENOE.BD_ENOE_Centralizada.dbo.pos_ocu p
    ON D.pos_ocu = p.CVE

GROUP BY
    D.anio,
    s.DESCRIP,
    p.DESCRIP

ORDER BY
    D.anio,
    s.DESCRIP,
    p.DESCRIP;
GO