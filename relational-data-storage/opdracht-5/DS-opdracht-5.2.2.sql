SELECT CI.name AS Stad,
COUNT(IF (MB.name = 'Gold', 1, NULL)) Gold,
COUNT(IF (MB.name = 'Silver', 1, NULL)) Silver,
COUNT(IF (MB.name = 'Bronze', 1, NULL)) Bronze,
COUNT(IF (MB.name NOT IN ('Gold', 'Silver', 'Bronze'), 1, NULL)) Other
FROM mhl_suppliers AS SP
JOIN mhl_membertypes AS MB ON SP.membertype = MB.id
JOIN mhl_cities AS CI on SP.city_ID = CI.id
GROUP BY Stad
ORDER BY Gold DESC, Silver DESC, Bronze DESC, Other DESC
