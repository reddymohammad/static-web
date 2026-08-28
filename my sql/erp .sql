 CREATE DATABASE erp;
Query OK, 1 row affected (0.06 sec)

mysql> USE erp;
Database changed
mysql> CREATE TABLE customers (
    ->     customer_id INT AUTO_INCREMENT,
    ->     cust_name VARCHAR(100) NOT NULL,
    ->     phone VARCHAR(15) UNIQUE NOT NULL,
    ->     email VARCHAR(100) UNIQUE,
    ->     address VARCHAR(255),
    ->     city VARCHAR(50),
    ->     status ENUM('ACTIVE','INACTIVE') DEFAULT 'ACTIVE',
    ->
    ->     PRIMARY KEY (customer_id)
    -> );
Query OK, 0 rows affected (0.06 sec)

mysql>
mysql>  desc customers;
+-------------+---------------------------+------+-----+---------+----------------+
| Field       | Type                      | Null | Key | Default | Extra          |
+-------------+---------------------------+------+-----+---------+----------------+
| customer_id | int                       | NO   | PRI | NULL    | auto_increment |
| cust_name   | varchar(100)              | NO   |     | NULL    |                |
| phone       | varchar(15)               | NO   | UNI | NULL    |                |
| email       | varchar(100)              | YES  | UNI | NULL    |                |
| address     | varchar(255)              | YES  |     | NULL    |                |
| city        | varchar(50)               | YES  |     | NULL    |                |
| status      | enum('ACTIVE','INACTIVE') | YES  |     | ACTIVE  |                |
+-------------+---------------------------+------+-----+---------+----------------+
7 rows in set (0.02 sec)

mysql> CREATE TABLE products (
    ->     product_id VARCHAR(30) UNIQUE,
    ->     product_name VARCHAR(100) NOT NULL,
    ->     price DECIMAL(10,2) NOT NULL,
    ->     stock_quantity INT DEFAULT 0,
    ->
    ->     PRIMARY KEY (product_id)
    -> );
Query OK, 0 rows affected (0.04 sec)

mysql>  desc products;
+----------------+---------------+------+-----+---------+-------+
| Field          | Type          | Null | Key | Default | Extra |
+----------------+---------------+------+-----+---------+-------+
| product_id     | varchar(30)   | NO   | PRI | NULL    |       |
| product_name   | varchar(100)  | NO   |     | NULL    |       |
| price          | decimal(10,2) | NO   |     | NULL    |       |
| stock_quantity | int           | YES  |     | 0       |       |
+----------------+---------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql> CREATE TABLE sales_request (
    ->     request_id VARCHAR(30) UNIQUE,
    ->     customer_id INT NOT NULL,
    ->     product_id VARCHAR(30) NOT NULL,
    ->     quantity INT NOT NULL,
    ->     amount DECIMAL(10,2),
    ->     request_status ENUM('PENDING','APPROVED','REJECTED') DEFAULT 'PENDING',
    ->     remarks VARCHAR(255),
    ->
    ->     PRIMARY KEY (request_id),
    ->     FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    ->     FOREIGN KEY (product_id) REFERENCES products(product_id)
    -> );
Query OK, 0 rows affected (0.05 sec)

mysql> desc sales_request;
+----------------+---------------------------------------+------+-----+---------+-------+
| Field          | Type                                  | Null | Key | Default | Extra |
+----------------+---------------------------------------+------+-----+---------+-------+
| request_id     | varchar(30)                           | NO   | PRI | NULL    |       |
| customer_id    | int                                   | NO   | MUL | NULL    |       |
| product_id     | varchar(30)                           | NO   | MUL | NULL    |       |
| quantity       | int                                   | NO   |     | NULL    |       |
| amount         | decimal(10,2)                         | YES  |     | NULL    |       |
| request_status | enum('PENDING','APPROVED','REJECTED') | YES  |     | PENDING |       |
| remarks        | varchar(255)                          | YES  |     | NULL    |       |
+----------------+---------------------------------------+------+-----+---------+-------+
7 rows in set (0.00 sec)

mysql> CREATE TABLE payment (
    ->     payment_id VARCHAR(30) UNIQUE,
    ->     order_id VARCHAR(30) NOT NULL,
    ->     payment_method ENUM('CASH','CARD','UPI') DEFAULT 'CASH',
    ->     paid_amount DECIMAL(10,2) NOT NULL,
    ->     payment_status ENUM('PAID','PENDING','FAILED') DEFAULT 'PAID',
    ->
    ->     PRIMARY KEY (payment_id),
    ->     FOREIGN KEY (order_id) REFERENCES sales_order(order_id)
    -> );
ERROR 1824 (HY000): Failed to open the referenced table 'sales_order'
mysql> CREATE TABLE sales_order (
    ->     order_id VARCHAR(30) UNIQUE,
    ->     request_id VARCHAR(30) NOT NULL,
    ->     order_status ENUM('CONFIRMED','CANCELLED') DEFAULT 'CONFIRMED',
    ->     approved_amount DECIMAL(10,2),
    ->
    ->     PRIMARY KEY (order_id),
    ->     FOREIGN KEY (request_id) REFERENCES sales_request(request_id)
    -> );
Query OK, 0 rows affected (0.04 sec)

mysql> CREATE TABLE payment (
    ->     payment_id VARCHAR(30) UNIQUE,
    ->     order_id VARCHAR(30) NOT NULL,
    ->     payment_method ENUM('CASH','CARD','UPI') DEFAULT 'CASH',
    ->     paid_amount DECIMAL(10,2) NOT NULL,
    ->     payment_status ENUM('PAID','PENDING','FAILED') DEFAULT 'PAID',
    ->
    ->     PRIMARY KEY (payment_id),
    ->     FOREIGN KEY (order_id) REFERENCES sales_order(order_id)
    -> );
Query OK, 0 rows affected (0.04 sec)

mysql> desc payment;
+----------------+---------------------------------+------+-----+---------+-------+
| Field          | Type                            | Null | Key | Default | Extra |
+----------------+---------------------------------+------+-----+---------+-------+
| payment_id     | varchar(30)                     | NO   | PRI | NULL    |       |
| order_id       | varchar(30)                     | NO   | MUL | NULL    |       |
| payment_method | enum('CASH','CARD','UPI')       | YES  |     | CASH    |       |
| paid_amount    | decimal(10,2)                   | NO   |     | NULL    |       |
| payment_status | enum('PAID','PENDING','FAILED') | YES  |     | PAID    |       |
+----------------+---------------------------------+------+-----+---------+-------+
5 rows in set (0.00 sec)

mysql> INSERT INTO customers (cust_name, phone, city, status) VALUES
    -> ('Divya','9000000001','Bangalore','ACTIVE'),
    -> ('Arun','9000000002','Chennai','ACTIVE'),
    -> ('Meena','9000000003','Mumbai','ACTIVE'),
    -> ('Kiran','9000000004','Hyderabad','ACTIVE'),
    -> ('Ravi','9000000005','Delhi','ACTIVE'),
    -> ('Suresh','9000000006','Pune','ACTIVE'),
    -> ('Anita','9000000007','Kolkata','ACTIVE'),
    -> ('Vikram','9000000008','Chennai','ACTIVE'),
    -> ('Priya','9000000009','Bangalore','ACTIVE'),
    -> ('Rahul','9000000010','Delhi','ACTIVE'),
    -> ('Sneha','9000000011','Mumbai','ACTIVE'),
    -> ('Ajay','9000000012','Pune','ACTIVE'),
    -> ('Nisha','9000000013','Hyderabad','INACTIVE'),
    -> ('Varun','9000000014','Chennai','INACTIVE'),
    -> ('Deepa','9000000015','Bangalore','INACTIVE'),
    -> ('Ramesh','9000000016','Delhi','INACTIVE'),
    -> ('Lakshmi','9000000017','Mumbai','INACTIVE'),
    -> ('Manoj','9000000018','Pune','INACTIVE'),
    -> ('Swathi','9000000019','Hyderabad','INACTIVE'),
    -> ('Gokul','9000000020','Chennai','INACTIVE');
Query OK, 20 rows affected (0.02 sec)
Records: 20  Duplicates: 0  Warnings: 0

mysql> select *from customers;
+-------------+-----------+------------+-------+---------+-----------+----------+
| customer_id | cust_name | phone      | email | address | city      | status   |
+-------------+-----------+------------+-------+---------+-----------+----------+
|           1 | Divya     | 9000000001 | NULL  | NULL    | Bangalore | ACTIVE   |
|           2 | Arun      | 9000000002 | NULL  | NULL    | Chennai   | ACTIVE   |
|           3 | Meena     | 9000000003 | NULL  | NULL    | Mumbai    | ACTIVE   |
|           4 | Kiran     | 9000000004 | NULL  | NULL    | Hyderabad | ACTIVE   |
|           5 | Ravi      | 9000000005 | NULL  | NULL    | Delhi     | ACTIVE   |
|           6 | Suresh    | 9000000006 | NULL  | NULL    | Pune      | ACTIVE   |
|           7 | Anita     | 9000000007 | NULL  | NULL    | Kolkata   | ACTIVE   |
|           8 | Vikram    | 9000000008 | NULL  | NULL    | Chennai   | ACTIVE   |
|           9 | Priya     | 9000000009 | NULL  | NULL    | Bangalore | ACTIVE   |
|          10 | Rahul     | 9000000010 | NULL  | NULL    | Delhi     | ACTIVE   |
|          11 | Sneha     | 9000000011 | NULL  | NULL    | Mumbai    | ACTIVE   |
|          12 | Ajay      | 9000000012 | NULL  | NULL    | Pune      | ACTIVE   |
|          13 | Nisha     | 9000000013 | NULL  | NULL    | Hyderabad | INACTIVE |
|          14 | Varun     | 9000000014 | NULL  | NULL    | Chennai   | INACTIVE |
|          15 | Deepa     | 9000000015 | NULL  | NULL    | Bangalore | INACTIVE |
|          16 | Ramesh    | 9000000016 | NULL  | NULL    | Delhi     | INACTIVE |
|          17 | Lakshmi   | 9000000017 | NULL  | NULL    | Mumbai    | INACTIVE |
|          18 | Manoj     | 9000000018 | NULL  | NULL    | Pune      | INACTIVE |
|          19 | Swathi    | 9000000019 | NULL  | NULL    | Hyderabad | INACTIVE |
|          20 | Gokul     | 9000000020 | NULL  | NULL    | Chennai   | INACTIVE |
+-------------+-----------+------------+-------+---------+-----------+----------+
20 rows in set (0.00 sec)

mysql> INSERT INTO products (product_id, product_name, price, stock_quantity) VALUES
    -> ('PROD_01','Laptop',50000,10),
    -> ('PROD_02','Mouse',500,100),
    -> ('PROD_03','Keyboard',1000,80),
    -> ('PROD_04','Monitor',15000,20),
    -> ('PROD_05','Printer',12000,15),
    -> ('PROD_06','Tablet',25000,25),
    -> ('PROD_07','Headphones',2000,60),
    -> ('PROD_08','Webcam',1500,40),
    -> ('PROD_09','External HDD',5000,30),
    -> ('PROD_10','SSD 1TB',8000,35),
    -> ('PROD_11','Router',3000,45),
    -> ('PROD_12','Smartphone',30000,50),
    -> ('PROD_13','Power Bank',1200,70),
    -> ('PROD_14','Bluetooth Speaker',3500,55),
    -> ('PROD_15','Office Chair',7000,20),
    -> ('PROD_16','Desk Lamp',900,90),
    -> ('PROD_17','Graphics Card',45000,12),
    -> ('PROD_18','Microphone',4000,33),
    -> ('PROD_19','Projector',22000,18),
    -> ('PROD_20','UPS',6000,22);
Query OK, 20 rows affected (0.01 sec)
Records: 20  Duplicates: 0  Warnings: 0

mysql> select *from products;
+------------+-------------------+----------+----------------+
| product_id | product_name      | price    | stock_quantity |
+------------+-------------------+----------+----------------+
| PROD_01    | Laptop            | 50000.00 |             10 |
| PROD_02    | Mouse             |   500.00 |            100 |
| PROD_03    | Keyboard          |  1000.00 |             80 |
| PROD_04    | Monitor           | 15000.00 |             20 |
| PROD_05    | Printer           | 12000.00 |             15 |
| PROD_06    | Tablet            | 25000.00 |             25 |
| PROD_07    | Headphones        |  2000.00 |             60 |
| PROD_08    | Webcam            |  1500.00 |             40 |
| PROD_09    | External HDD      |  5000.00 |             30 |
| PROD_10    | SSD 1TB           |  8000.00 |             35 |
| PROD_11    | Router            |  3000.00 |             45 |
| PROD_12    | Smartphone        | 30000.00 |             50 |
| PROD_13    | Power Bank        |  1200.00 |             70 |
| PROD_14    | Bluetooth Speaker |  3500.00 |             55 |
| PROD_15    | Office Chair      |  7000.00 |             20 |
| PROD_16    | Desk Lamp         |   900.00 |             90 |
| PROD_17    | Graphics Card     | 45000.00 |             12 |
| PROD_18    | Microphone        |  4000.00 |             33 |
| PROD_19    | Projector         | 22000.00 |             18 |
| PROD_20    | UPS               |  6000.00 |             22 |
+------------+-------------------+----------+----------------+
20 rows in set (0.00 sec)

mysql> INSERT INTO sales_request
    -> (request_id, customer_id, product_id, quantity, amount, request_status) VALUES
    ->
    -> ('SR_01',1,'PROD_01',1,50000,'APPROVED'),
    -> ('SR_02',1,'PROD_02',2,1000,'APPROVED'),
    -> ('SR_03',2,'PROD_03',1,1000,'PENDING'),
    -> ('SR_04',3,'PROD_04',1,15000,'APPROVED'),
    -> ('SR_05',3,'PROD_02',3,1500,'APPROVED'),
    -> ('SR_06',4,'PROD_05',1,12000,'REJECTED'),
    -> ('SR_07',5,'PROD_01',2,100000,'APPROVED'),
    -> ('SR_08',6,'PROD_03',2,2000,'APPROVED'),
    -> ('SR_09',7,'PROD_04',1,15000,'PENDING'),
    -> ('SR_10',8,'PROD_02',5,2500,'APPROVED'),
    -> ('SR_11',9,'PROD_01',1,50000,'APPROVED'),
    -> ('SR_12',10,'PROD_05',1,12000,'APPROVED'),
    -> ('SR_13',11,'PROD_02',2,1000,'APPROVED'),
    -> ('SR_14',12,'PROD_03',1,1000,'PENDING');
Query OK, 14 rows affected (0.01 sec)
Records: 14  Duplicates: 0  Warnings: 0

mysql> select *from sales_request;
+------------+-------------+------------+----------+-----------+----------------+---------+
| request_id | customer_id | product_id | quantity | amount    | request_status | remarks |
+------------+-------------+------------+----------+-----------+----------------+---------+
| SR_01      |           1 | PROD_01    |        1 |  50000.00 | APPROVED       | NULL    |
| SR_02      |           1 | PROD_02    |        2 |   1000.00 | APPROVED       | NULL    |
| SR_03      |           2 | PROD_03    |        1 |   1000.00 | PENDING        | NULL    |
| SR_04      |           3 | PROD_04    |        1 |  15000.00 | APPROVED       | NULL    |
| SR_05      |           3 | PROD_02    |        3 |   1500.00 | APPROVED       | NULL    |
| SR_06      |           4 | PROD_05    |        1 |  12000.00 | REJECTED       | NULL    |
| SR_07      |           5 | PROD_01    |        2 | 100000.00 | APPROVED       | NULL    |
| SR_08      |           6 | PROD_03    |        2 |   2000.00 | APPROVED       | NULL    |
| SR_09      |           7 | PROD_04    |        1 |  15000.00 | PENDING        | NULL    |
| SR_10      |           8 | PROD_02    |        5 |   2500.00 | APPROVED       | NULL    |
| SR_11      |           9 | PROD_01    |        1 |  50000.00 | APPROVED       | NULL    |
| SR_12      |          10 | PROD_05    |        1 |  12000.00 | APPROVED       | NULL    |
| SR_13      |          11 | PROD_02    |        2 |   1000.00 | APPROVED       | NULL    |
| SR_14      |          12 | PROD_03    |        1 |   1000.00 | PENDING        | NULL    |
+------------+-------------+------------+----------+-----------+----------------+---------+
14 rows in set (0.00 sec)

mysql> INSERT INTO sales_order
    -> (order_id, request_id, order_status, approved_amount) VALUES
    ->
    -> ('SO_01','SR_01','CONFIRMED',50000),
    -> ('SO_02','SR_02','CONFIRMED',1000),
    -> ('SO_03','SR_04','CANCELLED',15000),
    -> ('SO_04','SR_05','CONFIRMED',1500),
    -> ('SO_05','SR_07','CONFIRMED',100000),
    -> ('SO_06','SR_08','CONFIRMED',2000),
    -> ('SO_07','SR_10','CANCELLED',2500),
    -> ('SO_08','SR_11','CONFIRMED',50000),
    -> ('SO_09','SR_12','CONFIRMED',12000),
    -> ('SO_10','SR_13','CONFIRMED',1000);
Query OK, 10 rows affected (0.01 sec)
Records: 10  Duplicates: 0  Warnings: 0

mysql> INSERT INTO payment
    -> (payment_id, order_id, payment_method, paid_amount, payment_status) VALUES
    -> ('PAY_01','SO_01','CARD',50000,'PAID'),
    -> ('PAY_02','SO_02','UPI',1000,'PAID'),
    -> ('PAY_03','SO_04','CASH',1500,'PAID'),
    -> ('PAY_04','SO_05','CARD',100000,'PENDING'),
    -> ('PAY_05','SO_06','UPI',2000,'PAID'),
    -> ('PAY_06','SO_08','CARD',50000,'PAID'),
    -> ('PAY_07','SO_09','UPI',12000,'PENDING'),
    -> ('PAY_08','SO_03','CASH',15000,'FAILED'),
    -> ('PAY_09','SO_01','UPI',25000,'PAID'),
    -> ('PAY_10','SO_01','UPI',25000,'PAID');
Query OK, 10 rows affected (0.01 sec)
Records: 10  Duplicates: 0  Warnings: 0

mysql> select *from sales_order;
+----------+------------+--------------+-----------------+
| order_id | request_id | order_status | approved_amount |
+----------+------------+--------------+-----------------+
| SO_01    | SR_01      | CONFIRMED    |        50000.00 |
| SO_02    | SR_02      | CONFIRMED    |         1000.00 |
| SO_03    | SR_04      | CANCELLED    |        15000.00 |
| SO_04    | SR_05      | CONFIRMED    |         1500.00 |
| SO_05    | SR_07      | CONFIRMED    |       100000.00 |
| SO_06    | SR_08      | CONFIRMED    |         2000.00 |
| SO_07    | SR_10      | CANCELLED    |         2500.00 |
| SO_08    | SR_11      | CONFIRMED    |        50000.00 |
| SO_09    | SR_12      | CONFIRMED    |        12000.00 |
| SO_10    | SR_13      | CONFIRMED    |         1000.00 |
+----------+------------+--------------+-----------------+
10 rows in set (0.00 sec)

mysql> select *from payment;
+------------+----------+----------------+-------------+----------------+
| payment_id | order_id | payment_method | paid_amount | payment_status |
+------------+----------+----------------+-------------+----------------+
| PAY_01     | SO_01    | CARD           |    50000.00 | PAID           |
| PAY_02     | SO_02    | UPI            |     1000.00 | PAID           |
| PAY_03     | SO_04    | CASH           |     1500.00 | PAID           |
| PAY_04     | SO_05    | CARD           |   100000.00 | PENDING        |
| PAY_05     | SO_06    | UPI            |     2000.00 | PAID           |
| PAY_06     | SO_08    | CARD           |    50000.00 | PAID           |
| PAY_07     | SO_09    | UPI            |    12000.00 | PENDING        |
| PAY_08     | SO_03    | CASH           |    15000.00 | FAILED         |
| PAY_09     | SO_01    | UPI            |    25000.00 | PAID           |
| PAY_10     | SO_01    | UPI            |    25000.00 | PAID           |
+------------+----------+----------------+-------------+----------------+
10 rows in set (0.00 sec)





Write a query to get customer names and their order IDs.


SELECT 
c.cust_name AS Customer_Name,
sr.request_id AS Sales_Req_Id,
so.order_id AS Sales_Order_Id
FROM
customers c 
INNER JOIN sales_request sr
ON c.customer_id=sr.customer_id
INNER JOIN sales_order so
ON sr.request_id=so.request_id;


Get: customer name, product name, order_status, payment_status, paid_amount - Only for CONFIRMED orders.


SELECT 
c.cust_name AS "Customer_Name",
p.product AS "Product Name",
so.order_status AS "Order status",
pt.payment_status AS "Payment status",
pt.paid_amount AS "Amount"
FROM
customers c 
INNER JOIN sales_request sr
ON c.customer_id=sr.customer_id
product p
INNER JION 
INNER JOIN sales_order so
ON sr.request_id=so.request_id
INNER JION payment pt
ON so.order_id=pt.order_id;

