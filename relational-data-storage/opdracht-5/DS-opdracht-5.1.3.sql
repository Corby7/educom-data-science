SELECT COUNT(HC.hitcount), AVG(HC.hitcount), MIN(HC.hitcount), MAX(HC.hitcount), SUM(HC.hitcount)
FROM mhl_hitcount as HC
GROUP BY HC.year, HC.month