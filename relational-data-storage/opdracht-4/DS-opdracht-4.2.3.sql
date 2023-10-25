SELECT R2.id, IFNULL(R1.name, R2.name) as hoofdrubriek, IF(ISNULL(R1.name), '', R2.name) as subrubriek
FROM mhl_rubrieken AS R1
RIGHT OUTER JOIN mhl_rubrieken AS R2 ON R1.id = R2.parent
ORDER BY hoofdrubriek, subrubriek