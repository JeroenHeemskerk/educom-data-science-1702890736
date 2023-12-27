SELECT 
	year, 
    IFNULL(SUM(CASE WHEN month < 4 THEN hitcount END),0) AS Eerste_kwartaal,
    IFNULL(SUM(CASE WHEN month > 3 AND month < 7 THEN hitcount END),0) AS Tweede_kwartaal,
    IFNULL(SUM(CASE WHEN month > 6 AND month < 10 THEN hitcount END),0) AS Derde_kwartaal,
    IFNULL(SUM(CASE WHEN month > 9 THEN hitcount END),0) AS Vierde_kwartaal,
    SUM(hitcount) AS Totaal
FROM mhl_hitcount
GROUP BY year
