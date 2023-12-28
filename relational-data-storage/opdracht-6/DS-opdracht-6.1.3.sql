SELECT 
    COALESCE(IF(parent = '', name, CONCAT((SELECT name FROM mhl_rubrieken AS hr 
    WHERE hr.id = r.parent), ' - ', name)), '') AS naam,
    (SELECT COUNT(mhl_suppliers_ID) FROM mhl_suppliers_mhl_rubriek_view AS v WHERE 
     v.mhl_rubriek_view_ID=r.id) AS num_sup
FROM mhl_rubrieken AS r
WHERE (COALESCE(IF(parent = '', name, CONCAT((SELECT name FROM mhl_rubrieken AS hr 
    WHERE hr.id = r.parent), ' - ', name)), '')<> '')
ORDER BY naam