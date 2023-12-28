SELECT
	DAYNAME(joindate) AS 'Dag van de week',
    COUNT(id) AS 'Aantal aanmeldingen'
FROM mhl_suppliers
GROUP BY WEEKDAY(joindate)