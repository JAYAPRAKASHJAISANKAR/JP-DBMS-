USE store;

SHOW tables;	

SELECT *
FROM customers
ORDER BY first_name;


-- How to comment a line ?
-- How to see the data in the table

select 1,2;

-- ALESE

SELECT 1+2;

SELECT 100-50/2 AS value;

SELECT 100-50/2 AS ' answer value';


USE store;

SELECT *
FROM customers;

SELECT first_name, last_name, points 
FROM customers;
SELECT first_name, last_name, points,points + 10 AS 'new points'
FROM customers;
SELECT  171*214+625 AS ' answer value';

USE exercise_hr;



SELECT first_name AS 'First Name',last_name AS 'Last Name'
FROM employees;

SELECT  first_name AS 'First Name',last_name AS 'Last Name', salary,salary * 15/100 AS 'PF'
FROM employees;

SELECT  first_name AS 'First Name',last_name AS 'Last Name', salary,salary * 15/100 AS 'PF'
FROM employees;

SELECT DISTINCT department_id
FROM employees;

USE store;

-- comparison operators:
-- >
-- >=
-- <=
-- =
-- != or <>

SELECT *
FROM customers
WHERE points > 3000 ;

SELECT *
FROM customers
WHERE birth_date > '1990-01-01';
SELECT *
FROM customers
WHERE state ='Fl';

SELECT *
FROM customers
WHERE state !='FL';

-- ORDER LOGICAL OPERATORS

-- OR 
-- AND 
-- NOT

SELECT *
FROM customers
WHERE points>3000 AND birth_date >'1990-01-01';

SELECT *
FROM customers
WHERE points>3000 OR birth_date >'1990-01-01';


SELECT *
FROM customers
WHERE  birth_date >'1889-01-01' OR points>1000  AND state ='virginia';


SELECT *
FROM customers
WHERE (birth_date >'1989-01-01' AND points>1000)  OR state ='VA';

SELECT *
FROM customers
WHERE NOT (state ='FL');

USE exercise_hr;

SELECT  FIRST_NAME AS "first_name",LAST_NAME AS "last_name",SALARY AS 'salary'
FROM employees
WHERE (SALARY <10000 OR SALARY >15000);

SELECT  FIRST_NAME AS "first_name",LAST_NAME AS "last_name",DEPARTMENT_ID
FROM employees
WHERE (DEPARTMENT_ID=30 OR DEPARTMENT_ID =100);

SELECT  FIRST_NAME AS "first_name",LAST_NAME AS "last_name", SALARY,DEPARTMENT_ID
FROM employees
WHERE  (SALARY <10000 OR SALARY >15000) AND (DEPARTMENT_ID=30 OR DEPARTMENT_ID =100);


SELECT  *
FROM employees
WHERE  (last_name ='BLAKE' OR last_name ='SCOTT' OR last_name = 'KING' OR last_name='FORD');

SELECT   FIRST_NAME AS "first_name",LAST_NAME AS "last_name",HIRE_DATE AS "hire_date"
FROM employees;

USE store;

SELECT *
FROM customers
WHERE state='FL'OR state='VA' OR state='GA';

SELECT *
FROM customers
WHERE state IN ('FL','VA','GA');


 -- Return products with
-- quantity in stock equal to 49, 38, 72
-- no product with quantity_in_stock = 72.
-- 2. Return customers born
-- between 1/1/1990 and 1/1/2000
-- Get the customers whose
-- 1. addresses contain TRAIL or AVENUE
-- 2. phone numbers end with 9
-- 3. phone numbers do not end with 9
 -- Get the customers whose
-- 1. first names are ELKA or AMBUR
-- 2. last names end with EY or ON
-- 3. last names start with MY or contains SE
-- 4. last names contains B followed by R or U

SELECT *
FROM products
WHERE quantity_in_stock  IN (49,38 ,72);

SELECT *
FROM products
WHERE quantity_in_stock !=72;

SELECT *
FROM customers
WHERE (birth_date >=1/1/1990  OR birth_date <=1/1/2000);

SELECT *
FROM customers
WHERE address IN ('TRAIL' OR 'AVENUE');

USE store;

SELECT *
FROM customers
WHERE  points BETWEEN 3000 AND 10000;

SELECT *
FROM customers
WHERE  birth_date BETWEEN '1990-01-01' AND '2000-01-01';

SELECT *
FROM customers
WHERE last_name LIKE '%y';

SELECT *
FROM customers
WHERE last_name LIKE 'Mac%';
SELECT *
FROM customers
WHERE last_name LIKE 'M%';

SELECT *
FROM customers
WHERE first_name LIKE '%ba%';


SELECT *
FROM customers
WHERE last_name LIKE 'MacCaffrey';

SELECT *
FROM customers
WHERE address LIKE '%TRAIL' or  address LIKE '%AVENUE';

SELECT *
FROM customers
WHERE phone LIKE '%9';

SELECT *
FROM customers
WHERE phone  NOT LIKE '%9';

SELECT *
FROM customers
WHERE phone  NOT LIKE '%EY' or phone  NOT LIKE '%ON';

SELECT *
FROM customers
WHERE last_name   LIKE 'MY%' or  last_name   LIKE '%SE%';


SELECT *
FROM customers
WHERE last_name   LIKE 'B%' AND  last_name   LIKE '%R%' OR last_name   LIKE '%U%'; 

SELECT *
FROM customers
WHERE first_name LIKE "%ELKA" or first_name LIKE "%AMBUR";

SELECT *
FROM customers
WHERE last_name LIKE "%EY" OR last_name LIKE "ON";

SELECT *
FROM customers
WHERE last_name LIKE "MY%" AND last_name LIKE "%SE%";

SELECT *
FROM customers
WHERE last_name LIKE "%B%" OR  last_name LIKE "%R%" OR last_name LIKE "%U%";


USE exercise_hr;

SELECT first_name
FROM  employees
WHERE first_name LIKE "%b%" AND first_name LIKE "%c%";

SELECT last_name
FROM  employees
WHERE last_name LIKE "______";


SELECT last_name
FROM  employees
WHERE last_name LIKE "__e%";

use store;

SELECT *
FROM  customers
WHERE last_name LIKE "_____y";

SELECT *
FROM  customers
WHERE last_name LIKE "b____y";



-- REGEXP:
-- ^ (caret) - starts with
-- $ - ends with
-- |(pipe) - logical or

-- write a  query to find all customers having last_names that contain

SELECT * 
From customers
where  last_name like "%age%" ;

SELECT * 
From customers
where  last_name REGEXP "age" ;

SELECT * 
From customers
where  last_name REGEXP "^Mac" ;

SELECT * 
From customers
where  last_name REGEXP "field$" ;

SELECT * 
From customers
where  last_name REGEXP "^Mac|field$" ;

SELECT * 
From customers
where  last_name REGEXP "ae|be|ce|de|ee|fe|ge|he" ;

SELECT * 
From customers
where  last_name REGEXP "[a-h]e" ;

--  1. first names are ELKA or AMBUR
-- -- 2. last names end with EY or ON
-- -- 3. last names start with MY or contains SE
-- -- 4. last names contains B followed by R or U


SELECT * 
From customers
where  first_name like "%ELKA% " ;


SELECT * 
From customers
where  last_name like "%EY " OR last_name like  "%ON " ;

SELECT * 
From customers
where  last_name REGEXP "MY|SE" ;


use store;
select *
from customers
where last_name regexp "[gim]e";

select *
from customers
where last_name regexp "ey$|on$";


SELECT * 
From customers
where  last_name REGEXP "MY|SE" ;

select *
from customers
where last_name regexp "B[RU]";

select *
from customers
where last_name regexp "br|bu";
 
 use exercise_hr;
 
 select *
from employees
where last_name regexp "br|bu";

-- regex testing
--  null operator
 use store;
 select *
from customers
where phone  is null;

 select *
from customers
where phone  is  not null;

 select *
from orders
where shipped_date  is  null;

 select *
from orders
where shipped_date  is  not null;

show tables;

select *
from orders
where shipper_id  is  null;

 select *
from orders
where shipper_id  is  not null;


use exercise_hr;

select employee_id,first_name,department_id
from  employees
order by department_id, first_name;

select employee_id,first_name,department_id
from  employees
order by department_id desc, first_name desc;



select employee_id,first_name,department_id
from  employees
order by department_id desc, first_name ;


select employee_id,first_name,department_id
from  employees
order by first_name,department_id  ;



use exercise_hr;


select min(salary) as salary
from employees;

select max(salary) as salary
from employees;

select avg(salary) as salary
from employees;


select sum(employees) as employees
from employees;


use exercise_hr;
-- inner join 
select*
from employees inner join departments
on employees.department_id = departments.department_id;



-- same id name change the infront table name
select employee_id,first_name,last_name,e.department_id,department_name
from employees AS e inner join departments AS d
on e.department_id = d.department_id;


-- find the employees working in the  'IT' department 
select employee_id,first_name,last_name,e.department_id,department_name
from employees AS e inner join departments AS d
on e.department_id = d.department_id
where department_name ='IT';

-- Write a query to find the name (first_name, last name), department ID and name of all the employees.
select first_name,last_name,e.department_id
from employees AS e inner join departments AS d
on e.department_id = d.department_id;


-- Write a query to find the name (first_name, last_name), job, department ID and name of the employees who works in London.

 select first_name,last_name,job_id
 from employees;

-- from employees AS e inner join coutries AS c
-- on e.job_id = j.job_id;



-- where city ="London";

select employee_id,last_name,job_id,e.department_id,e.manager_id
from employees AS e inner join departments AS d
on e.department_id = d.department_id;


-- select employee_id,last_name,job_id,e.department_id,e.manager_id,hire_date
select *
from employees AS e inner join departments AS d
on e.department_id = d.department_id
where  first_name = "jones";



SELECT employees.first_name, employees.last_name, employees.department_id
FROM employees
JOIN departments
ON employees.department_id = departments.department_id;

SELECT employees.first_name, employees.last_name, employees.job_id, departments.department_id
FROM employees
JOIN departments
ON employees.department_id = departments.department_id
JOIN locations
ON departments.location_id = locations.location_id
WHERE locations.city = 'London';

SELECT e.employee_id, e.last_name AS employee_last_name, m.manager_id, m.last_name AS manager_last_name
FROM employees e
JOIN employees m
ON e.manager_id = m.employee_id;

SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date > (SELECT hire_date FROM employees WHERE last_name = 'Jones')
ORDER BY hire_date;



SELECT employees.employee_id, jobs.job_title, DATEDIFF(job_history.end_date, job_history.start_date) AS num_days
FROM employees
JOIN job_history
ON employees.employee_id = job_history.employee_id
JOIN jobs
ON job_history.job_id = jobs.job_id
WHERE employees.department_id = 90;


SELECT department_id, COUNT(employees.employee_id) AS num_employees
FROM employees
JOIN departments
ON employees.department_id = departments.department_id
GROUP BY department_id;









































































































































