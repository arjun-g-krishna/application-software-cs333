  
create table employee( 
 empid CHAR(4) ,
 name CHAR(10) not null, 
 designation CHAR(30) not null,
 dob date not null,
 salary numeric
 );
insert into employee(empid,name,designation,dob,salary)
values("e1","Soman","cashier","1972-4-11","31250"),
("e2","Sasi","clerk","1990-8-6","45380");
 
 select * from employee;

create table employdetails(
sex char(1),
nationality char(10),
gno int,
primary key (gno),
empid char(4) references employee(empid)
);

insert into employdetails(sex,nationality,gno,empid)
values("M","Indian","27","e2"),
("M","Bengali","56","e5");

select * from employee where
empid in (select empid from employdetails);

select * from employee where 
empid not in(select empid from employdetails);