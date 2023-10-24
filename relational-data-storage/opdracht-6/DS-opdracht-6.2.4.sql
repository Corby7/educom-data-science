SELECT EXTRACT(YEAR FROM joindate) AS year, MONTHNAME(joindate) AS month, COUNT(id) AS aantal
FROM mhl_suppliers
GROUP BY month, year
ORDER BY year, MONTH(joindate)
