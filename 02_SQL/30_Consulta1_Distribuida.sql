SELECT
    D.anio,
    D.trimestre,
    COUNT(*) AS total_personas
FROM
(
    SELECT anio, trimestre
    FROM CENTRAL_ENOE.BD_ENOE_Nodo_A.dbo.hechos_ocupacion

    UNION ALL

    SELECT anio, trimestre
    FROM BD_ENOE_Nodo_B.dbo.hechos_ocupacion
) AS D
GROUP BY
    D.anio,
    D.trimestre
ORDER BY
    D.anio,
    D.trimestre;