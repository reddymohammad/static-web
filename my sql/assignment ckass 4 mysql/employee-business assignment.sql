CREATE TABLE business_unit(
	bu_Id int,
	name VARCHAR(32) NOT null,
	loc VARCHAR(32) DEFAULT 'IBM-Bangalore',
	PRIMARY KEY(bu_Id)
);

DESC business_unit;

CREATE TABLE employees(
	eid int,
	ename VARCHAR(32) NOT null,
	esal FLOAT CHECK(esal>=18000),
	unit_Id INT, 
	gender VARCHAR(32),
		PRIMARY KEY(eid),
		FOREIGN KEY(unit_Id) REFERENCES business_unit(bu_Id)
);

INSERT INTO business_unit
VALUES
(2001,'COLT','IBM-Manyathe Tech Park'),
(2002,'Voda_Spain','IBM - Dairy Circle'),
(2003,'Airtel','IBM-Whitefield'),
(2004,'Cipla','IBM-Electronic City');

INSERT INTO employees
VALUES
(101,'Rahul',45000.45,2001,'Male'),
(102,'Sonia',55000.45,2001,'Female'),
(103,'Priyanka',65000.45,2001,'Female'),
(104,'Modi',75000.45,2001,'Male'),
(105,'Amith',65000.45,2002,'Male'),
(106,'Vijay J',75000.45,2002,'Male'),
(107,'Rajni',85000.45,2002,'Male'),
(108,'Ajith',85000.45,2002,'Male'),
(109,'Vijay Sethupathi',75000.45,2003,'Male'),
(110,'Alia',55000.45,2003,'Female'),
(111,'Mahesh bhut',65000.45,2004,'Male'),
(112,'Mohan Manchu',745000.45,2001,'Male'),
(113,'Vishnu Manchu',845000.45,2001,'Male'),
(114,'Manoj',45000.45,2001,'Male'),
(115,'Lakshmi Manchu',35000.45,2002,'Female');

Assignments
--------------
1.Write SQL Query display employee names and salaries whose salary is greater than 70000?

SELECT ename, esal
FROM employees
WHERE esal>70000;


+------------------+---------+
| ename            | esal    |
+------------------+---------+
| Modi             | 75000.5 |
| Vijay J          | 75000.5 |
| Rajni            | 85000.5 |
| Ajith            | 85000.5 |
| Vijay Sethupathi | 75000.5 |
| Mohan Manchu     |  745000 |
| Vishnu Manchu    |  845000 |
+------------------+---------+
7 rows in set (0.00 sec)

2.Write SQL Query display employee name, salary, and business unit name?


3.Write SQL Query find total number of employees in each business unit
4.Write SQL Query find maximum salary in each business unit
5.Write SQL Query display employees working in IBM-Whitefield
6.Write SQL Query display employees whose names start with letter 'V'

SELECT *FROM employees
WHERE ename LIKE 'v%';

+-----+------------------+---------+---------+--------+
| eid | ename            | esal    | unit_Id | gender |
+-----+------------------+---------+---------+--------+
| 106 | Vijay J          | 75000.5 |    2002 | Male   |
| 109 | Vijay Sethupathi | 75000.5 |    2003 | Male   |
| 113 | Vishnu Manchu    |  845000 |    2001 | Male   |
+-----+------------------+---------+---------+--------+
3 rows in set (0.00 sec)



7.Write SQL Query find average salary of male and female employees separately

SELECT gender, AVG(esal) AS average_salary
FROM employees
GROUP BY gender;

+--------+--------------------+
| gender | average_salary     |
+--------+--------------------+
| Male   | 200454.99431818182 |
| Female |     52500.44921875 |
+--------+--------------------+
2 rows in set (0.01 sec)


8.Write SQL Query display highest paid employee details


SELECT *
FROM employees
WHERE esal = (SELECT MAX(esal) FROM employees);



+-----+---------------+--------+---------+--------+
| eid | ename         | esal   | unit_Id | gender |
+-----+---------------+--------+---------+--------+
| 113 | Vishnu Manchu | 845000 |    2001 | Male   |
+-----+---------------+--------+---------+--------+
1 row in set (0.00 sec)


9.Write SQL Query find business units having more than 3 employees