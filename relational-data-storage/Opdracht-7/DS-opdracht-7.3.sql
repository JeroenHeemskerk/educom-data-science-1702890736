DROP TRIGGER IF EXISTS employee_aur;

DELIMITER $$

CREATE TRIGGER employees_aur
AFTER UPDATE
ON employees FOR EACH ROW
BEGIN
    INSERT INTO employeesArchives(employeeNumber,lastName,firstName,extension,email,
                                 officeCode,reportsTo,jobTitle,salary,date_hired,date_fired)
    VALUES(employeeNumber,lastName,firstName,extension,email,
           officeCode,reportsTo,jobTitle,salary,date_hired,new.date_fired);
END$$    

DELIMITER ;