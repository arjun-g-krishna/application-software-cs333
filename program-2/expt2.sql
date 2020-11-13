create table employee( 
code CHAR(4) not null,
 name CHAR(10) not null, 
 designation CHAR(30) not null,
 dob date not null,
 salary numeric
 );
insert into employee(code,name,designation,dob,salary)
values("e1","John","cashier","1972-4-11","31250"),
("e2","Amy","clerk","1990-8-6","45380");

select * from employee;

UPDATE employee 
SET 
    salary = 25000
WHERE
    code = 'e1';
    
select * from employee;

DELETE FROM employee 
WHERE
    code = 'e2';

select * from employee;