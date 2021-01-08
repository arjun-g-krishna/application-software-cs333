create table employee(
code char(7) primary key,
name varchar(20),
dob date,
designation varchar(30),
salary float
);

insert into employee(code,name,dob,designation,salary) values
('fg2345','Samuel','1995-09-21','Clerk',48526.23),
('hj2472','Jalal','2001-07-11','Sales',27543.75),
('op6321','Rohan','1987-12-11','Clerk',38975.29),
('bv2567','Riya','2000-01-21','Receptionist',25000.54),
('kl2312','Babu','1964-02-14','Manager',69420.69),
('bn7846','Joseph','1972-04-03','Documentation',38465.11);

select code,name,designation from employee 
order by name desc;

create table deposit(
baccno bigint,
branch_name varchar(30),
amount float
);

insert into deposit values
('231498','Mumbai',2467252.89),
('480982','Kolkata',1245149.74),
('834691','Pune',6492746.53),
('567872','Mumbai',93657354.89),
('329752','Cochin',2383642.28);

select branch_name, count(baccno), sum(amount) from deposit group by branch_name;