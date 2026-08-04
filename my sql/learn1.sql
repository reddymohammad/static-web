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