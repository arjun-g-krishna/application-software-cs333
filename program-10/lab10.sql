use sys;
CREATE TABLE CUR (
	name CHAR(10),
    dob DATE,
    salary INT(11)
);

DELIMITER //

CREATE PROCEDURE IMP()
BEGIN
	DECLARE done INT DEFAULT FALSE;
    DECLARE emp_name CHAR(10);
    DECLARE emp_dob DATE;
    DECLARE emp_salary INT(11);
    DECLARE emp_record CURSOR FOR SELECT name,dob,salary FROM employee;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;
    OPEN emp_record;
    read_loop: LOOP
		FETCH emp_record INTO emp_name,emp_dob,emp_salary;
        IF done THEN
			LEAVE read_loop;
		END IF;
        INSERT INTO CUR VALUES(emp_name,emp_dob,emp_salary);
	END LOOP;
    CLOSE emp_record;
END;//
DELIMITER ;

CALL IMP();

SELECT * FROM CUR;
