SELECT s.name, straat, huisnr, postcode
FROM mhl_suppliers AS s
JOIN mhl_cities AS c ON c.id = s.city_ID
JOIN mhl_suppliers_mhl_rubriek_view AS v ON s.id = v.mhl_suppliers_ID
JOIN mhl_rubrieken AS r ON r.id = v.mhl_rubriek_view_ID
JOIN mhl_rubrieken AS r_parent ON r.parent = r_parent.id
WHERE c.name = 'amsterdam'
AND (r.name = 'drank' OR r_parent.name = 'drank')
ORDER BY r.name, s.name