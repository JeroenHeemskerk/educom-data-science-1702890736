CREATE VIEW v_employee_status AS
SELECT employeeNumber, lastName, firstName, f_examines_status_hired(employeeNumber) AS status
FROM employees