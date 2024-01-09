DELIMITER $$

CREATE TRIGGER after_insert_employee
AFTER INSERT ON employees
FOR EACH ROW
BEGIN
    INSERT INTO salaryArchive (employee_number, salary, modification_date)
    VALUES (NEW.employeeNumber, NEW.salary, NOW());
END$$

CREATE TRIGGER before_update_salary
BEFORE UPDATE ON employees
FOR EACH ROW
BEGIN
    IF NEW.salary != OLD.salary THEN
        INSERT INTO salaryArchive (eemployee_number, old_salary, salary, modification_date)
        VALUES (OLD.employeeNumber, OLD.salary, NEW.salary, NOW());
    END IF;
END$$

CREATE TRIGGER before_delete_employee
BEFORE DELETE ON employees
FOR EACH ROW
BEGIN
    INSERT INTO deletedEmployees (employee_number, old_salary, modification_date)
    VALUES (OLD.employeeNumber, OLD.salary, NOW());
END$$

DELIMITER ;
