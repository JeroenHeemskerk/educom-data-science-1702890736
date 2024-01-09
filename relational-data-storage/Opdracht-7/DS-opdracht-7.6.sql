DELIMITER $$

CREATE PROCEDURE p_update_salaries()
BEGIN
	UPDATE employees
    SET salary = salary * 1.05; 
	SELECT id, salary
    FROM
        employees;
        
END$$

DELIMITER ;