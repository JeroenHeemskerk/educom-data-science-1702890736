SELECT h.name AS hoofdrubriek, IFNULL(s.name, '') AS subrubriek
FROM mhl.mhl_rubrieken AS h
LEFT JOIN mhl.mhl_rubrieken AS s ON h.id = s.parent
ORDER BY h.name, s.name