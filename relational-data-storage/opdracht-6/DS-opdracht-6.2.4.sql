SELECT
	YEAR(joindate) AS jaar,
	MONTHNAME(joindate) AS 'maand',
    COUNT(id) AS 'Aantal aanmeldingen'
FROM mhl_suppliers
GROUP BY jaar, MONTHNAME(joindate)
ORDER BY jaar, MONTH(joindate)