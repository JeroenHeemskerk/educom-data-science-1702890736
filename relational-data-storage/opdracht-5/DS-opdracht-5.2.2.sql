SELECT 
	c.name AS stad, 
    COUNT(CASE WHEN mt.name= 'gold' THEN 1 END) AS Gold, 
    COUNT(CASE WHEN mt.name= 'silver' THEN 1 END) AS Silver, 
    COUNT(CASE WHEN mt.name= 'bronze' THEN 1 END) AS Bronze, 
    COUNT(CASE WHEN mt.name NOT IN ('gold', 'silver', 'bronze') THEN 1 END) AS Other
FROM mhl_membertypes AS mt
JOIN mhl_suppliers AS s ON s.membertype=mt.id
JOIN mhl_cities AS c ON s.city_ID=c.id
GROUP BY c.name
ORDER BY Gold DESC, Silver DESC, Bronze DESC, Other DESC
