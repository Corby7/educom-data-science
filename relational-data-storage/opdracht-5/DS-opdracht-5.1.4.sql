SELECT SP.name, SUM(HC.hitcount) AS numhits, COUNT(HC.month) AS nummonths, CAST(AVG(HC.hitcount) AS DECIMAL(10, 0)) AS avgpermonth
FROM mhl_hitcount AS HC
JOIN mhl_suppliers AS SP ON SP.id = HC.supplier_ID
GROUP BY SP.name
ORDER BY numhits DESC