CREATE VIEW v_directie
AS
SELECT 
    c.supplier_ID AS ID,
    c.name AS contact,
    c.contacttype AS functie, 
    CASE WHEN d.name = 'directie' THEN 'Directie' ELSE 'nvt' END AS department
FROM mhl_contacts AS c
JOIN mhl_departments AS d ON d.id = c.department
WHERE d.name = 'directie' OR c.contacttype LIKE '%directeur%'