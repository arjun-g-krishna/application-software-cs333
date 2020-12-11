CREATE TABLE store (
    order_no INT PRIMARY KEY AUTO_INCREMENT,
    code VARCHAR(10) NOT NULL,
    item_name VARCHAR(40) NOT NULL,
    quantity INT DEFAULT 0,
    price FLOAT NOT NULL,
    discount INT DEFAULT 0,
    mrp FLOAT
);

insert into store(code,item_name,quantity,price,discount,mrp)
values( "smj600g","Galaxy J6",7,16999.85,1000,15999.85),
( "s14","Asus Vivobook",2,51990.25,2000,49990.85);
select * from store;
CREATE VIEW itemView AS
    SELECT 
        item_name, quantity
    FROM
        store;
select * from itemView;        
insert into store(code,item_name,quantity,price,discount,mrp)
values( "cs100si","JBL wired headphones",12,600.95,100,500.95);

select * from itemView;

drop view itemView;