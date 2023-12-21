SELECT name, straat, huisnr, postcode
FROM mhl_suppliers
WHERE name LIKE '%&%' 
AND name NOT LIKE '%& %'
AND name NOT LIKE '%&_ %'
AND name NOT LIKE '%&__ %'
AND name NOT LIKE '%&___ %'