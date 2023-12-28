SELECT
    c.name,
    s.name AS leverancier,
    (SELECT SUM(hitcount)
     FROM mhl_hitcount AS h
     WHERE h.supplier_ID = s.id) AS total_hitcount,
    (SELECT AVG(hitcount)
     FROM `mhl_hitcount` AS ah
     JOIN mhl_suppliers AS s1 ON s1.id = ah.supplier_ID
     JOIN mhl_cities AS city1 ON s1.city_ID = city1.id
     JOIN mhl_communes AS c1 ON city1.commune_ID = c1.id
     WHERE c1.id = c.id) AS average_hitcount
FROM mhl_communes AS c
JOIN mhl_cities AS city ON city.commune_ID = c.id
JOIN mhl_suppliers AS s ON s.city_ID = city.id 
WHERE 
    (SELECT name FROM mhl_countries AS country WHERE country.id =
        (SELECT country_ID FROM mhl_districts AS d WHERE d.id = c.district_ID)) = 'nederland'
ORDER BY c.name, total_hitcount DESC
