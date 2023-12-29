SELECT 
    CASE 
        WHEN name LIKE '%''%' 
            THEN CONCAT(
                SUBSTRING(name, 1, 3),
                UPPER(SUBSTRING(name, 4, 1)),
                SUBSTRING(name, 5)
            )
        ELSE
            CONCAT(
                UPPER(SUBSTRING(name, 1, 1)),
                SUBSTRING(name, 2)
            )
    END AS name
FROM mhl_cities  
ORDER BY name