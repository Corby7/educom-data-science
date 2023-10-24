WITH MonthNames AS (
    SELECT 1 AS month_num, 'Januari' AS month_name
    UNION SELECT 2, 'Februari'
    UNION SELECT 3, 'Maart'
    UNION SELECT 4, 'April'
    UNION SELECT 5, 'Mei'
    UNION SELECT 6, 'Juni'
    UNION SELECT 7, 'Juli'
    UNION SELECT 8, 'Augustus'
    UNION SELECT 9, 'September'
    UNION SELECT 10, 'October'
    UNION SELECT 11, 'November'
    UNION SELECT 12, 'December'
)
SELECT
    year AS jaar,
    month_name AS maand,
    COUNT(supplier_ID) AS 'aantal leveranciers',
    SUM(hitcount) AS 'totaal aantal hits'
FROM mhl_hitcount
JOIN MonthNames ON month = month_num
GROUP BY year, month_name
ORDER BY year DESC, month_num DESC;