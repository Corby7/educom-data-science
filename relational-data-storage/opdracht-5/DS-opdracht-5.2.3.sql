SELECT 
year as Jaar,
SUM(IF (month IN (1, 2, 3), hitcount, 0)) 'Eerste kwartaal',
SUM(IF (month IN (4, 5, 6), hitcount, 0)) 'Tweede kwartaal',
SUM(IF (month IN (7, 8, 9), hitcount, 0)) 'Derde kwartaal',
SUM(IF (month IN (10, 11, 12), hitcount, 0	)) 'Vierde kwartaal',
SUM(hitcount) 'Totaal'
FROM mhl_hitcount
GROUP BY year