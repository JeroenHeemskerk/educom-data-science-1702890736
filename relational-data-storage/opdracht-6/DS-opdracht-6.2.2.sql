SELECT 
	id,
    joindate, 
    (SELECT DATEDIFF(CURRENT_DATE, joindate)) AS dagen_lid
FROM `mhl_suppliers` 
ORDER BY dagen_lid
