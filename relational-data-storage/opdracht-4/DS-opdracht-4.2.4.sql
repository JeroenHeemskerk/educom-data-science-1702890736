SELECT s.name AS suppliers, pt.name AS properties, IFNULL(p.content, "NOT SET") AS value
FROM mhl_suppliers AS s
CROSS JOIN mhl_propertytypes AS pt
LEFT  JOIN mhl_yn_properties AS p ON s.id=p.supplier_ID AND pt.id=p.propertytype_ID
JOIN mhl_cities AS c ON s.city_ID=c.id
WHERE c.name='amsterdam'