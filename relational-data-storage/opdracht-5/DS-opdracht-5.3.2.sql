CREATE VIEW v_postadres AS
SELECT 
	s.id AS ID, 
	if (s.p_address <>'', s.p_address, CONCAT(s.straat, '', s.huisnr)) AS adres, 
    if (s.p_address <> '',s.p_postcode, s.postcode) AS postcode, 
    if (s.p_address <> '', pc.name, c.name) AS stad 
FROM mhl_suppliers AS s 
LEFT JOIN mhl_cities AS pc ON pc.id=s.p_city_ID
LEFT JOIN mhl_cities AS c ON c.id=s.city_ID