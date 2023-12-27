SELECT h.hitcount, s.name AS leverancier, c.name AS stad, co.name AS gemeente, d.name AS provincie 
FROM mhl_suppliers AS s 
JOIN mhl_hitcount AS h ON h.supplier_ID=s.id 
JOIN mhl_cities AS c ON c.id=s.city_ID 
JOIN mhl_communes AS co ON co.id=c.commune_ID 
JOIN mhl_districts AS d ON co.district_ID=d.id 
WHERE h.year=2014 AND h.month=1 AND d.code = 'lb' OR d.code = 'nb' 