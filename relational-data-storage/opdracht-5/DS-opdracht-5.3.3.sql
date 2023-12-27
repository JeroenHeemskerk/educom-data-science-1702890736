SELECT
	s.name,
    IFNULL(d.contact, 'tav de directie') AS contact,
    p.adres,
    p.postcode,
    p.stad
FROM mhl_suppliers AS s
LEFT JOIN v_directie AS d ON s.id=d.ID
LEFT JOIN v_postadres AS p ON s.id=p.ID