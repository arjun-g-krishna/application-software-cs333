CREATE TABLE store(
    order_no int primary key AUTO_INCREMENT,
    code varchar(10) not null,
    item varchar(30) not null,
    quantity int default 0,
    price float,
    discount int default 0,
    mrp float not null
);
INSERT INTO store(code,item,quantity,price,discount,mrp)
VALUES 
("a14", "Apple iPhone", 3, 65000.99, 2000, 63000.99),
("ZS630KL", "Asus Zenfone", 10, 16000, 1000, 15000),
("smt865", "Galaxy tab s6", 10, 59900, 0, 59900);
select * from store;

SELECT MOD(price,9) FROM store;

SELECT price,POWER(price,2) FROM store;

SELECT ROUND(mrp DIV 7) FROM store;

