create table employee (
	eid INT ,
	fname VARCHAR(32),
	lname VARCHAR(32),
	city VARCHAR(32),
	esal INT,
	age INT,
	PRIMARY KEY(eid)
);
mysql> desc employee;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| eid   | int         | NO   | PRI | NULL    |       |
| fname | varchar(32) | YES  |     | NULL    |       |
| lname | varchar(32) | YES  |     | NULL    |       |
| city  | varchar(32) | YES  |     | NULL    |       |
| esal  | int         | YES  |     | NULL    |       |
| age   | int         | YES  |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
6 rows in set (0.00 sec)

insert into employee values
(101,'Rahul','Gandhi','Wayanad',45000,52),
(102,'Sonia','Gandhi','New Delhi',55000,75),
(103,'Priyanka','Gandhi','Nodia',65000,45),
(104,'Modi','Narendra','New Delhi',75000,69),
(105,'Rajni','Kanth','Chennai',85000,65),
(106,'Vijay','Setupathi','Chennai',95000,47),
(107,'Nayana','Tara','Chennai',25000,40),
(108,'Alia','Bhut','Mumbai',45000,31),
(109,'Mahesh','Bhut','Mumbai',15000,68),
(110,'Sonam','Kapoor','Mumbai',30000,27),
(111,'Anil','Kapoor','Mumbai',38000,40),
(112,'Raj','Kapoor','Mumbai',18000,78),
(113,'Vishnu','Manchu','Hyderabad',10000,40),
(114,'Manoj','Manchu','Hyderabad',12000,35);

mysql> select * from employee;
+-----+----------+-----------+-----------+-------+------+
| eid | fname    | lname     | city      | esal  | age  |
+-----+----------+-----------+-----------+-------+------+
| 101 | Rahul    | Gandhi    | Wayanad   | 45000 |   52 |
| 102 | Sonia    | Gandhi    | New Delhi | 55000 |   75 |
| 103 | Priyanka | Gandhi    | Nodia     | 65000 |   45 |
| 104 | Modi     | Narendra  | New Delhi | 75000 |   69 |
| 105 | Rajni    | Kanth     | Chennai   | 85000 |   65 |
| 106 | Vijay    | Setupathi | Chennai   | 95000 |   47 |
| 107 | Nayana   | Tara      | Chennai   | 25000 |   40 |
| 108 | Alia     | Bhut      | Mumbai    | 45000 |   31 |
| 109 | Mahesh   | Bhut      | Mumbai    | 15000 |   68 |
| 110 | Sonam    | Kapoor    | Mumbai    | 30000 |   27 |
| 111 | Anil     | Kapoor    | Mumbai    | 38000 |   40 |
| 112 | Raj      | Kapoor    | Mumbai    | 18000 |   78 |
| 113 | Vishnu   | Manchu    | Hyderabad | 10000 |   40 |
| 114 | Manoj    | Manchu    | Hyderabad | 12000 |   35 |
+-----+----------+-----------+-----------+-------+------+
14 rows in set (0.00 sec)

Inserting a null salary value

INSERT INTO employee (eid,fname,lname,city,age)
values
(115,'Mohan','Manchu','Hyderabad',70);

mysql> select * from employee;
+-----+----------+-----------+-----------+-------+------+
| eid | fname    | lname     | city      | esal  | age  |
+-----+----------+-----------+-----------+-------+------+
| 101 | Rahul    | Gandhi    | Wayanad   | 45000 |   52 |
| 102 | Sonia    | Gandhi    | New Delhi | 55000 |   75 |
| 103 | Priyanka | Gandhi    | Nodia     | 65000 |   45 |
| 104 | Modi     | Narendra  | New Delhi | 75000 |   69 |
| 105 | Rajni    | Kanth     | Chennai   | 85000 |   65 |
| 106 | Vijay    | Setupathi | Chennai   | 95000 |   47 |
| 107 | Nayana   | Tara      | Chennai   | 25000 |   40 |
| 108 | Alia     | Bhut      | Mumbai    | 45000 |   31 |
| 109 | Mahesh   | Bhut      | Mumbai    | 15000 |   68 |
| 110 | Sonam    | Kapoor    | Mumbai    | 30000 |   27 |
| 111 | Anil     | Kapoor    | Mumbai    | 38000 |   40 |
| 112 | Raj      | Kapoor    | Mumbai    | 18000 |   78 |
| 113 | Vishnu   | Manchu    | Hyderabad | 10000 |   40 |
| 114 | Manoj    | Manchu    | Hyderabad | 12000 |   35 |
| 115 | Mohan    | Manchu    | Hyderabad |  NULL |   70 |
+-----+----------+-----------+-----------+-------+------+
15 rows in set (0.00 sec)





#assingnment from my sql 


1. Write a query to fetch employee whose last name is same.

SELECT * FROM employee 
WHERE lname IN (SELECT lname FROM employee);





2. Write a query to fetch whose age is grater then 70.

SELECT * FROM employee 
WHERE age> 70;

SELECT * FROM employee
    -> WHERE age> 70;
+-----+-------+--------+-----------+-------+------+
| eid | fname | lname  | city      | esal  | age  |
+-----+-------+--------+-----------+-------+------+
| 102 | Sonia | Gandhi | New Delhi | 55000 |   75 |
| 112 | Raj   | Kapoor | Mumbai    | 18000 |   78 |
+-----+-------+--------+-----------+-------+------+
2 rows in set (0.00 sec)

3. Write a query to fetch employee with same city.




4. Write a query to fetch whose name ends with 'h'.


SELECT *FROM employee
WHERE lname LIKE "%h";
+-----+-------+-------+---------+-------+------+
| eid | fname | lname | city    | esal  | age  |
+-----+-------+-------+---------+-------+------+
| 105 | Rajni | Kanth | Chennai | 85000 |   65 |
+-----+-------+-------+---------+-------+------+
1 row in set (0.01 sec)


5. Write a query to count employee whose last name ends with 'i'.
select count(*) as total
from employee
where lname LIKE "%i";

+-------+
| total |
+-------+
|     4 |
+-------+

6. Write a query to find employee with highest salary.
SELECT *FROM employee
WHERE esal = (
    SELECT MAX(esal)
    FROM employee
);

+-----+-------+-----------+---------+-------+------+
| eid | fname | lname     | city    | esal  | age  |
+-----+-------+-----------+---------+-------+------+
| 106 | Vijay | Setupathi | Chennai | 95000 |   47 |
+-----+-------+-----------+---------+-------+------+
1 row in set (0.01 sec)

7. Write a query to find employee with lowest salary.
SELECT *FROM employee
WHERE esal = (
    SELECT MIN(esal)
    FROM employee
);

+-----+--------+--------+-----------+-------+------+
| eid | fname  | lname  | city      | esal  | age  |
+-----+--------+--------+-----------+-------+------+
| 113 | Vishnu | Manchu | Hyderabad | 10000 |   40 |
+-----+--------+--------+-----------+-------+------+
1 row in set (0.00 sec)

8. Write a query to change last name of employee whose id is 102.
UPDATE employee
SET lname = 'Gandhi'
WHERE eid = 102;

 UPDATE employee
    -> SET lname = 'Gandhi'
    -> WHERE eid = 102;
Query OK, 0 rows affected (0.00 sec)
Rows matched: 1  Changed: 0  Warnings: 0

9. Write a query to find name of employee whose name start's with 'A' and city name starts with 'B'.

SELECT * FROM employee
WHERE fname LIKE 'A%' AND city LIKE 'B%';

SELECT * FROM employee
    -> WHERE fname LIKE 'A%' AND city LIKE 'B%';
Empty set (0.00 sec)

10. Write a query to find employee with highest salary in 'New Delhi'.


SELECT * FROM employee
WHERE esal = (
    SELECT MAX(esal)
    FROM employee
    WHERE city = 'New Delhi'
);

+-----+-------+----------+-----------+-------+------+
| eid | fname | lname    | city      | esal  | age  |
+-----+-------+----------+-----------+-------+------+
| 104 | Modi  | Narendra | New Delhi | 75000 |   69 |
+-----+-------+----------+-----------+-------+------+
1 row in set (0.01 sec)


11. Write a query to find employee who line in 'New Delhi' with age above 70.
SELECT *from employee
     where age>70
     AND city = 'NEW Delhi';

     +-----+-------+--------+-----------+-------+------+
| eid | fname | lname  | city      | esal  | age  |
+-----+-------+--------+-----------+-------+------+
| 102 | Sonia | Gandhi | New Delhi | 55000 |   75 |
+-----+-------+--------+-----------+-------+------+
1 row in set (0.00 sec)

12. Write a query to find employee with salary below 50000.

SELECT *FROM employee
WHERE esal< 50000;
+-----+--------+--------+-----------+-------+------+
| eid | fname  | lname  | city      | esal  | age  |
+-----+--------+--------+-----------+-------+------+
| 101 | Rahul  | Gandhi | Wayanad   | 45000 |   52 |
| 107 | Nayana | Tara   | Chennai   | 25000 |   40 |
| 108 | Alia   | Bhut   | Mumbai    | 45000 |   31 |
| 109 | Mahesh | Bhut   | Mumbai    | 15000 |   68 |
| 110 | Sonam  | Kapoor | Mumbai    | 30000 |   27 |
| 111 | Anil   | Kapoor | Mumbai    | 38000 |   40 |
| 112 | Raj    | Kapoor | Mumbai    | 18000 |   78 |
| 113 | Vishnu | Manchu | Hyderabad | 10000 |   40 |
| 114 | Manoj  | Manchu | Hyderabad | 12000 |   35 |
+-----+--------+--------+-----------+-------+------+
9 rows in set (0.00 sec)


13. Write a query to find name of employee with salary range between 20000 to 40000.
SELECT *FROM employee
WHERE esal BETWEEN 20000 AND 40000;'
+-----+--------+--------+---------+-------+------+
| eid | fname  | lname  | city    | esal  | age  |
+-----+--------+--------+---------+-------+------+
| 107 | Nayana | Tara   | Chennai | 25000 |   40 |
| 110 | Sonam  | Kapoor | Mumbai  | 30000 |   27 |
| 111 | Anil   | Kapoor | Mumbai  | 38000 |   40 |
+-----+--------+--------+---------+-------+------+
3 rows in set (0.01 sec)

14. Write a query to find employee whose first name third character is 'j'.

 SELECT *from employee
where fname LIKE '__j%';

+-----+-------+-----------+---------+-------+------+
| eid | fname | lname     | city    | esal  | age  |
+-----+-------+-----------+---------+-------+------+
| 105 | Rajni | Kanth     | Chennai | 85000 |   65 |
| 106 | Vijay | Setupathi | Chennai | 95000 |   47 |
| 112 | Raj   | Kapoor    | Mumbai  | 18000 |   78 |
+-----+-------+-----------+---------+-------+------+
3 rows in set (0.00 sec)

15. Write a query to find employee whose first name third character is 'j' and live in 'New Delhi'.
SELECT *from employee
where fname LIKE '__j%'
AND city="New Delhi";

Empty set (0.00 sec)

16. Write a query to count employees whose first name third character is 'j'.
SELECT COUNT(*) AS total
FROM employee
WHERE fname LIKE '__j%';

+-------+
| total |
+-------+
|     3 |

17. Write a query to fetch employee with lowest salary and add 10000 to its salary.


18. Write a query to Sort the table by ascending.
SELECT * FROM employee
ORDER BY esal ASC;
+-----+----------+-----------+-----------+-------+------+
| eid | fname    | lname     | city      | esal  | age  |
+-----+----------+-----------+-----------+-------+------+
| 115 | Mohan    | Manchu    | Hyderabad |  NULL |   70 |
| 113 | Vishnu   | Manchu    | Hyderabad | 10000 |   40 |
| 114 | Manoj    | Manchu    | Hyderabad | 12000 |   35 |
| 109 | Mahesh   | Bhut      | Mumbai    | 15000 |   68 |
| 112 | Raj      | Kapoor    | Mumbai    | 18000 |   78 |
| 107 | Nayana   | Tara      | Chennai   | 25000 |   40 |
| 110 | Sonam    | Kapoor    | Mumbai    | 30000 |   27 |
| 111 | Anil     | Kapoor    | Mumbai    | 38000 |   40 |
| 101 | Rahul    | Gandhi    | Wayanad   | 45000 |   52 |
| 108 | Alia     | Bhut      | Mumbai    | 45000 |   31 |
| 102 | Sonia    | Gandhi    | New Delhi | 55000 |   75 |
| 103 | Priyanka | Gandhi    | Nodia     | 65000 |   45 |
| 104 | Modi     | Narendra  | New Delhi | 75000 |   69 |
| 105 | Rajni    | Kanth     | Chennai   | 85000 |   65 |
| 106 | Vijay    | Setupathi | Chennai   | 95000 |   47 |
+-----+----------+-----------+-----------+-------+------+
15 rows in set (0.00 sec)


19. Write a query to Sort the table by descending.
SELECT * FROM employee
ORDER BY esal DESC;

+-----+----------+-----------+-----------+-------+------+
| eid | fname    | lname     | city      | esal  | age  |
+-----+----------+-----------+-----------+-------+------+
| 106 | Vijay    | Setupathi | Chennai   | 95000 |   47 |
| 105 | Rajni    | Kanth     | Chennai   | 85000 |   65 |
| 104 | Modi     | Narendra  | New Delhi | 75000 |   69 |
| 103 | Priyanka | Gandhi    | Nodia     | 65000 |   45 |
| 102 | Sonia    | Gandhi    | New Delhi | 55000 |   75 |
| 101 | Rahul    | Gandhi    | Wayanad   | 45000 |   52 |
| 108 | Alia     | Bhut      | Mumbai    | 45000 |   31 |
| 111 | Anil     | Kapoor    | Mumbai    | 38000 |   40 |
| 110 | Sonam    | Kapoor    | Mumbai    | 30000 |   27 |
| 107 | Nayana   | Tara      | Chennai   | 25000 |   40 |
| 112 | Raj      | Kapoor    | Mumbai    | 18000 |   78 |
| 109 | Mahesh   | Bhut      | Mumbai    | 15000 |   68 |
| 114 | Manoj    | Manchu    | Hyderabad | 12000 |   35 |
| 113 | Vishnu   | Manchu    | Hyderabad | 10000 |   40 |
| 115 | Mohan    | Manchu    | Hyderabad |  NULL |   70 |
+-----+----------+-----------+-----------+-------+------+
15 rows in set (0.00 sec)


20. Write a query to show employee whose name's last third word is 'j' and salary is more then 30000. 

SELECT * FROM employee
WHERE fname LIKE '__j%' AND esal > 30000;

+-----+-------+-----------+---------+-------+------+
| eid | fname | lname     | city    | esal  | age  |
+-----+-------+-----------+---------+-------+------+
| 105 | Rajni | Kanth     | Chennai | 85000 |   65 |
| 106 | Vijay | Setupathi | Chennai | 95000 |   47 |
+-----+-------+-----------+---------+-------+------+
2 rows in set (0.00 sec)

21. Write a query to show all employee who live in 'Bangalore' and 'Wayanad'.

SELECT * FROM employee
WHERE city IN ('Bangalore', 'Wayanad');

+-----+-------+--------+---------+-------+------+
| eid | fname | lname  | city    | esal  | age  |
+-----+-------+--------+---------+-------+------+
| 101 | Rahul | Gandhi | Wayanad | 45000 |   52 |
+-----+-------+--------+---------+-------+------+
1 row in set (0.00 sec)

22. Write a query to fetch employee with first name count is 5.

SELECT *from employee
WHERE LENGTH(fname) = 5;

+-----+-------+-----------+-----------+-------+------+
| eid | fname | lname     | city      | esal  | age  |
+-----+-------+-----------+-----------+-------+------+
| 101 | Rahul | Gandhi    | Wayanad   | 45000 |   52 |
| 102 | Sonia | Gandhi    | New Delhi | 55000 |   75 |
| 105 | Rajni | Kanth     | Chennai   | 85000 |   65 |
| 106 | Vijay | Setupathi | Chennai   | 95000 |   47 |
| 110 | Sonam | Kapoor    | Mumbai    | 30000 |   27 |
| 114 | Manoj | Manchu    | Hyderabad | 12000 |   35 |
| 115 | Mohan | Manchu    | Hyderabad |  NULL |   70 |
+-----+-------+-----------+-----------+-------+------+
7 rows in set (0.00 sec)

23. Write a query to group by employee with their age.
SELECT age, COUNT(*) AS total
FROM employee
GROUP BY age;

+------+-------+
| age  | total |
+------+-------+
|   52 |     1 |
|   75 |     1 |
|   45 |     1 |
|   69 |     1 |
|   65 |     1 |
|   47 |     1 |
|   40 |     3 |
|   31 |     1 |
|   68 |     1 |
|   27 |     1 |
|   78 |     1 |
|   35 |     1 |
|   70 |     1 |
+------+-------+
13 rows in set (0.00 sec)

26. Write a query to find employee with null salary.

SELECT * FROM employee
WHERE esal IS NULL;

+-----+-------+--------+-----------+------+------+
| eid | fname | lname  | city      | esal | age  |
+-----+-------+--------+-----------+------+------+
| 115 | Mohan | Manchu | Hyderabad | NULL |   70 |
+-----+-------+--------+-----------+------+------+
1 row in set (0.00 sec)

27. Write a query to find employee whose cities are not null.

SELECT * FROM employee
WHERE city IS NOT NULL;

+-----+----------+-----------+-----------+-------+------+
| eid | fname    | lname     | city      | esal  | age  |
+-----+----------+-----------+-----------+-------+------+
| 101 | Rahul    | Gandhi    | Wayanad   | 45000 |   52 |
| 102 | Sonia    | Gandhi    | New Delhi | 55000 |   75 |
| 103 | Priyanka | Gandhi    | Nodia     | 65000 |   45 |
| 104 | Modi     | Narendra  | New Delhi | 75000 |   69 |
| 105 | Rajni    | Kanth     | Chennai   | 85000 |   65 |
| 106 | Vijay    | Setupathi | Chennai   | 95000 |   47 |
| 107 | Nayana   | Tara      | Chennai   | 25000 |   40 |
| 108 | Alia     | Bhut      | Mumbai    | 45000 |   31 |
| 109 | Mahesh   | Bhut      | Mumbai    | 15000 |   68 |
| 110 | Sonam    | Kapoor    | Mumbai    | 30000 |   27 |
| 111 | Anil     | Kapoor    | Mumbai    | 38000 |   40 |
| 112 | Raj      | Kapoor    | Mumbai    | 18000 |   78 |
| 113 | Vishnu   | Manchu    | Hyderabad | 10000 |   40 |
| 114 | Manoj    | Manchu    | Hyderabad | 12000 |   35 |
| 115 | Mohan    | Manchu    | Hyderabad |  NULL |   70 |
+-----+----------+-----------+-----------+-------+------+
15 rows in set (0.00 sec)

28. Write a query to delete data of employee whose id is 109.
DELETE FROM employee
WHERE eid = 109;

Query OK, 1 row affected (0.01 sec)

mysql> SELECT *FROM employee;
+-----+----------+-----------+-----------+-------+------+
| eid | fname    | lname     | city      | esal  | age  |
+-----+----------+-----------+-----------+-------+------+
| 101 | Rahul    | Gandhi    | Wayanad   | 45000 |   52 |
| 102 | Sonia    | Gandhi    | New Delhi | 55000 |   75 |
| 103 | Priyanka | Gandhi    | Nodia     | 65000 |   45 |
| 104 | Modi     | Narendra  | New Delhi | 75000 |   69 |
| 105 | Rajni    | Kanth     | Chennai   | 85000 |   65 |
| 106 | Vijay    | Setupathi | Chennai   | 95000 |   47 |
| 107 | Nayana   | Tara      | Chennai   | 25000 |   40 |
| 108 | Alia     | Bhut      | Mumbai    | 45000 |   31 |
| 110 | Sonam    | Kapoor    | Mumbai    | 30000 |   27 |
| 111 | Anil     | Kapoor    | Mumbai    | 38000 |   40 |
| 112 | Raj      | Kapoor    | Mumbai    | 18000 |   78 |
| 113 | Vishnu   | Manchu    | Hyderabad | 10000 |   40 |
| 114 | Manoj    | Manchu    | Hyderabad | 12000 |   35 |
| 115 | Mohan    | Manchu    | Hyderabad |  NULL |   70 |
+-----+----------+-----------+-----------+-------+------+
14 rows in set (0.00 sec)

29. Write a query to group by employee with their age and show first three rows of data.

SELECT age, COUNT(*) AS total
FROM employee
GROUP BY age
LIMIT 3;
+------+-------+
| age  | total |
+------+-------+
|   52 |     1 |
|   75 |     1 |
|   45 |     1 |
+------+-------+
3 rows in set (0.00 sec)

30. Write a query to group by employee of 'New Delhi' by their last name.

SELECT lname, COUNT(*) AS total
FROM employee
WHERE city = 'New Delhi'
GROUP BY lname;

+----------+-------+
| lname    | total |
+----------+-------+
| Gandhi   |     1 |
| Narendra |     1 |
+----------+-------+
2 rows in set (0.00 sec)
