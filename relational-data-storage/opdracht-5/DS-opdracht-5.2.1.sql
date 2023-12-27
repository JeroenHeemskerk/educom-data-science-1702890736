SELECT 
	s.name AS leverancier, 
	ifnull(c.name, 'tav de directie') AS aanhef, 
	ifnull(NULLIF(s.p_address, ''), CONCAT(s.straat, '', s.huisnr)) AS adres, 
    ifnull(NULLIF(s.p_postcode, ''), s.postcode) AS postcode, 
    city.name AS stad 
FROM mhl_suppliers AS s 
LEFT JOIN mhl_contacts AS c ON c.supplier_ID=s.id AND c.department=3
LEFT JOIN mhl_cities AS city ON city.id=s.p_city_ID OR city.id=s.city_ID
LEFT JOIN mhl_communes ON city.commune_ID=mhl_communes.id 
LEFT JOIN mhl_districts AS d ON d.id=mhl_communes.district_ID
WHERE postcode <> ''
ORDER BY d.name, city.name, s.name