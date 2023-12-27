SELECT s.name, straat, huisnr, postcode, g.lat, g.lng 
FROM mhl_suppliers AS s
JOIN pc_lat_long AS g ON g.pc6=s.postcode 
ORDER BY g.lat DESC
LIMIT 5