SELECT c.name, c.commune_ID 
FROM mhl_cities as c
LEFT JOIN mhl_communes AS co ON co.id=c.commune_ID
WHERE c.commune_ID IS NULL OR co.id IS NULL