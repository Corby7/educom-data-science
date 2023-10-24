SELECT DAYNAME(joindate) AS 'Dag van de week', COUNT(id) AS 'Aantal aanmeldingen'
FROM mhl.mhl_suppliers
GROUP BY 'Dag van de week', DAYOFWEEK(joindate)
