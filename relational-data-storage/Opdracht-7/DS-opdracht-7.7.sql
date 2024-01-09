DELIMITER $$

CREATE PROCEDURE p_delete_fired_employees()
BEGIN
    DELETE FROM employees
    WHERE date_fired IS NOT NULL;
END$$

DELIMITER ;
