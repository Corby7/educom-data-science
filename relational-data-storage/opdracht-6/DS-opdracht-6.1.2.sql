SELECT COM.name AS gemeente, SUP.name AS leverancier, SUM(HIT.hitcount) AS total_hitcount, subaverage AS average_hitcount
FROM mhl_suppliers AS SUP

JOIN mhl_cities AS CIT ON SUP.city_ID = CIT.id
JOIN mhl_communes AS COM ON CIT.commune_ID = COM.id
JOIN mhl_hitcount AS HIT ON SUP.id = HIT.supplier_ID
JOIN (SELECT COM.name AS subgemeente, AVG(HIT.hitcount) AS subaverage
    FROM mhl_suppliers AS SUP
    JOIN mhl_cities AS CIT ON SUP.city_ID = CIT.id
    JOIN mhl_communes AS COM ON CIT.commune_ID = COM.id
    JOIN mhl_hitcount AS HIT ON SUP.id = HIT.supplier_ID
    GROUP BY subgemeente) AS SBQ ON COM.name = subgemeente

WHERE COM.district_ID BETWEEN 1 AND 12
GROUP BY leverancier
HAVING total_hitcount > average_hitcount
ORDER BY gemeente, (SUM(HIT.hitcount) - subaverage) DESC
