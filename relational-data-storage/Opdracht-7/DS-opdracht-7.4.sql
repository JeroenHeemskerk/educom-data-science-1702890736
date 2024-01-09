DELIMITER $$

CREATE FUNCTION f_examines_status_hired(
    employee INT
)
RETURNS VARCHAR(5)
DETERMINISTIC
BEGIN
    IF (SELECT date_fired FROM employees WHERE employeeNumber=employee) IS NULL THEN
        SET status = '';
    ELSE
        SET status = 'FIRED';
    END IF;

    RETURN status;
END $$

DELIMITER ;