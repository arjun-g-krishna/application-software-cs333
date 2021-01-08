CREATE TABLE Employee(
    code CHAR(6) PRIMARY KEY,
    name VARCHAR(80),
    dob date,
    designation VARCHAR(100),
    salary FLOAT
);
INSERT INTO Employee (code, name, dob, designation, salary)
VALUES
('gh124','Faris','1986-12-05','General Manager',50000.25),
('py534','Adith','1998-11-15','Advertising',50000.50),
('bn863','Shreya','1992-02-06','Clerk',29450),
('hu846','John','1980-01-21','Sales',21520),
('cli458','Amy','200-04-11','Clerk',15000.75);

SELECT SUM(salary) FROM Employee WHERE designation='Clerk';

SELECT MAX(salary) FROM Employee;

SELECT AVG(salary) FROM Employee;

SELECT MIN(salary) FROM Employee;

SELECT COUNT(*) FROM Employee;