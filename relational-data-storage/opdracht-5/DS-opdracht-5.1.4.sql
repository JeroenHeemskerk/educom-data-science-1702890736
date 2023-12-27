SELECT s.name AS supplier, SUM(hitcount) AS total_hitcount, COUNT(month), ROUND(AVG(hitcount), 0)
FROM mhl_hitcount
JOIN mhl_suppliers AS s ON s.id=mhl_hitcount.supplier_ID
GROUP BY s.name
ORDER BY total_hitcount DESC