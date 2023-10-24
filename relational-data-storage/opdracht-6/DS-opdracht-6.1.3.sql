SELECT rubrieknaam, COUNT(SP.id) AS numsup
FROM mhl_suppliers_mhl_rubriek_view AS RV

JOIN mhl_suppliers AS SP ON RV.mhl_suppliers_ID = SP.id
JOIN mhl_rubrieken AS RU ON RV.mhl_rubriek_view_ID = RU.id
RIGHT OUTER JOIN (SELECT R2.id AS rubID, IF(R1.name IS NULL, R2.name, CONCAT(R1.name, ' - ', R2.name)) AS rubrieknaam
    FROM mhl_rubrieken AS R1
    RIGHT OUTER JOIN mhl_rubrieken AS R2 ON R2.parent = R1.id) AS rnames on RV.mhl_rubriek_view_ID = rubID

GROUP BY rubrieknaam
ORDER BY rubrieknaam


