mysql -uroot -proot
show databases;
use dbtwo;
show tables;
select *from products;

drop database dbtwo;


-----------------------
class-2

mysql -uroot -proot 

system cls;

show databases;

CREATE DATABASE dbone;

USE dbone;

show tables;

CREATE TABLE employees();

CREATE TABLE employees(
eid int,
ename VARCHAR(32),
esal FLOAT 
);

DESC employees;
mysql> DESC employees;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| eid   | int         | YES  |     | NULL    |       |
| ename | varchar(32) | YES  |     | NULL    |       |
| esal  | float       | YES  |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
3 rows in set (0.02 sec)

SELECT *FROM employees;

INSERT one row
INSERT multiple rows
INSERT few columns
--------------------------------

INSERT INTO employees
VALUES
(101,'Rahul Gandhi',45000.45);

INSERT INTO employees
VALUES
(102,'Sonia',55000.55),
(103,'Priya',65000.65),
(104,'alia',75000.75);


INSERT INTO employees(eid,ename)
VALUES
(105,'Modi'),
(106,'Amith');



DELETE FROM employees;


SELECT *FROM employees;

DELETE FROM employees
WHERE eid=105;

DELETE FROM employees
WHERE eid=106;


drop table employees;


DELETE vs drop?

========================


CREATE TABLE employees(
	eid int,
	ename VARCHAR(32),
	esal FLOAT,
	gender VARCHAR(32)
);


INSERT INTO employees
VALUES
(101,'Rahul',45000.45,'Male'),
(102,'Sonia',55000.55,'Female'),
(103,'Priya',65000.65,'Female'),
(104,'Modi',750000.75,'Male'),
(105,'Amith',85000.85,'Male');


UPDATE employees
SET esal=100000.01;
SELECT *FROM employees;

UPDATE employees
SET ename="Rahul Gandhi"
WHERE eid=101;


SELECT *FROM EMPLOYEES;
