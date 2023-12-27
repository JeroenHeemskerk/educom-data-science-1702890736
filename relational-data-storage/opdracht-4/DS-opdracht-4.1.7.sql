SELECT c.name AS c1name, c2.name AS c2name, c.id AS c1id, c2.id AS c2id 
FROM mhl_cities AS c 
JOIN mhl_communes AS co ON c.commune_ID=co.id 
JOIN mhl_cities AS c2 ON c.name=c2.name 
WHERE c.name=c2.name ANd c.id<>c2.id
ORDER BY c.name