SELECT s.name, straat, huisnr, postcode 
FROM mhl_suppliers AS s
JOIN mhl_yn_properties AS p ON s.id=p.supplier_ID
JOIN mhl_propertytypes AS pt ON p.propertytype_ID=pt.id
WHERE pt.name = 'specialistische leverancier' OR pt.name = 'ook voor particulieren'