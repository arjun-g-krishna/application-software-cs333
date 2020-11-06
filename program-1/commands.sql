CREATE TABLE STUDENT(sno INT, name varchar(25), dept varchar(25), mark varchar(25)); 
alter table STUDENT ADD AGE INT;
insert into student(sno, name, dept, mark, age) values (1, "Arjun"," cs",38,19);
select * from student;
ALTER TABLE student MODIFY COLUMN dept varchar(50);
ALTER TABLE student DROP COLUMN mark;
select * from student;
ALTER TABLE student RENAME TO students;
drop table students;