SELECT DISTINCT c.name AS c1name, c.id AS c1id, c2.id AS c2id,
       c.commune_ID AS gid1, c2.commune_ID AS gid2, 
       co.name AS gemeente1, co2.name AS gemeente2
FROM mhl_cities AS c 
JOIN mhl_communes AS co ON c.commune_ID = co.id 
JOIN mhl_cities AS c2 ON c.name = c2.name AND c.id < c2.id
JOIN mhl_communes AS co2 ON c2.commune_ID = co2.id
WHERE co.name IS NOT NULL AND co2.name IS NOT NULL
ORDER BY c.name