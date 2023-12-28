SELECT 
    COALESCE(IF(parent = '', name, CONCAT((SELECT name FROM mhl_rubrieken AS hr 
    WHERE hr.id = r.parent), ' - ', name)), '') AS naam,
    IFNULL(
        (SELECT SUM(hitcount) FROM mhl_hitcount AS h 
         WHERE h.supplier_ID IN 
         (SELECT mhl_suppliers_ID FROM mhl_suppliers_mhl_rubriek_view AS v 
          WHERE v.mhl_rubriek_view_ID=r.id)), 'Geen hits') AS total
FROM mhl_rubrieken AS r
WHERE (COALESCE(IF(parent = '', name, CONCAT((SELECT name FROM mhl_rubrieken AS hr 
    WHERE hr.id = r.parent), ' - ', name)), '') <> '')
ORDER BY naam