CREATE TABLE department (
    code INT PRIMARY KEY NOT NULL,
    title VARCHAR(30),
    dept VARCHAR(30) UNIQUE NOT NULL,
    dept_id INT UNIQUE NOT NULL,
    salary INT,
    CHECK (salary > 2000)
);

insert into department (code, title, dept, dept_id, salary)
values(314, "Executive", "Sales", 104, 48000);

SELECT 
    *
FROM
    department;
    
create table instructor(
	name varchar(20) not null,
	code int not null,
	id int primary key default 0
);
insert into instructor(name,code)
values("Karen", 69);
select * from instructor;