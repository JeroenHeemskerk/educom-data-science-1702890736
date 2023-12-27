SELECT c.name, IFNULL(co.name, 'INVALID') AS commune_name
FROM mhl_cities AS c
LEFT JOIN mhl_communes AS co ON co.id = c.commune_ID