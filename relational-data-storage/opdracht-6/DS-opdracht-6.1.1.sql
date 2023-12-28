SELECT 
    year AS jaar, 
    CASE month
        WHEN 1 THEN 'januari'  
        WHEN 2 THEN 'februari'  
        WHEN 3 THEN 'maart'  
        WHEN 4 THEN 'april'  
        WHEN 5 THEN 'mei'  
        WHEN 6 THEN 'juni'  
        WHEN 7 THEN 'juli'  
        WHEN 8 THEN 'augustus'  
        WHEN 9 THEN 'september'  
        WHEN 10 THEN 'oktober'  
        WHEN 11 THEN 'november'  
        WHEN 12 THEN 'december'
    END AS maand,
    COUNT(supplier_ID) AS aantal_leveranciers, 
    SUM(hitcount) AS totale_hits
FROM `mhl_hitcount` 
GROUP BY year, month
ORDER BY year DESC, maand