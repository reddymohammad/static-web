class-2

mysql -uroot -proot

system cls;

show databases;

CREATE DATABASE dbthree;
USE dbthree;
show tables;
CREATE TABLE products();

CREATE TABLE products(
pid int,  
name VARCHAR(32),
price float,
category VARCHAR(32)
);

DESC products;

INSERT INTO products
VALUES
(101,'Marker Pen -one',35.35,'Stationary');

SELECT *FROM products;


INSERT INTO products
VALUES
(102,'Marker Pen -Two',35.35,'Stationary'),
(103,'Marker Pen -Three',45.35,'Stationary'),
(104,'Marker Pen -Four',55.35,'Stationary'),
(105,'Marker Pen -Five',65.35,'Stationary');

INSERT INTO products(pid,name)
VALUES
(106,'ThinkPad');

SELECT *FROM products;

UPDATE products
SET name="Lenovo TP"
WHERE pid=106;

UPDATE products
SET price=5.0;

DELETE FROM products;

DROP TABLE products;
DROP DATABASE dbthree;



# class-5 and EXPLAIN innerjoin and outer join 


CREATE TABLE customers(
  c_id int,
  cust_name VARCHAR(32) NOT NULL,
  gender  VARCHAR(32) NOT NULL,
  age INT CHECK(age>18),
  PRIMARY KEY(c_id)
  );
CREATE TABLE orders (
    ->     order_id INT,
    ->     details VARCHAR(32) NOT NULL,
    ->     amount FLOAT NOT NULL,
    ->     cust_id INT,
    ->     status VARCHAR(32) DEFAULT 'OPEN',
    ->     PRIMARY KEY (order_id),
    ->     FOREIGN KEY (cust_id) REFERENCES customers(c_id)
    -> );

INSERT INTO customers
VALUES
(101,'Rahul Gandhi','Male',52),
(102,'Sonia Gandhi','Female',82),
(103,'Priya Gandhi','Female',32),
(104,'Modi','Male',75),
(105,'Amith','Male',78),
(106,'vijay','Male',24);

INSERT INTO orders
VALUES
(1001,'Marker-pen Set-1',300,101,'Open'),
(1002,'Pens holderSet-2',400,101,'Closed'),
(1003,'Lenovo Mousepad',800,101,'Closed');

INSERT INTO orders
VALUES
(1004,'ThinkPad',30000,102,'Open'),
(1005,'Mouse Pad',400,102,'Closed');


INSERT INTO orders
VALUES
(1006,'Electric Bulb',900,103,'Open'),
(1007,'Mac BookPro',10000400,103,'Opend'),
(1008,'Lenovo Mousepad',800,103,'Closed'),
(1009,'Lenovo Mousepad',800,103,'Closed');



INSERT INTO orders
VALUES
(1010,'Apple Mobile',3000,106,'Open'),
(1011,'FitBit',400,106	,'Closed');
(100)



#  case -1 display customers who have placed orders

select * from customers cust,orders ord
where cust.c_id = ord.cust_id;



select * from customers cust
inner join orders ord
on cust.c_id = ord.cust_id;


# case -2 all customers and their orders if any

select * from customers cust
left join orders ord
on cust.c_id = ord.cust_id;


# case all orders and their customers 

select * from orders ord
right join customers cust
on cust.c_id = ord.cust_id;


