SELECT mhl_suppliers.name, straat, huisnr, postcode
FROM mhl_suppliers
INNER JOIN mhl_cities
ON mhl_cities.id=mhl_suppliers.city_ID
INNER JOIN mhl_communes
ON mhl_cities.commune_ID=mhl_communes.id
WHERE mhl_communes.name = 'steenwijkerland'