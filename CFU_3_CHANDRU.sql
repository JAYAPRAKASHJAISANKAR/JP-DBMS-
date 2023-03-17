USE exercise_hr;
-- 1.Write a query to find the name (first_name, last name), department ID and name of all the employees.
select FIRST_NAME, LAST_NAME, e.DEPARTMENT_ID, DEPARTMENT_NAME
from employees as e inner join departments as d
on e.DEPARTMENT_ID = d.DEPARTMENT_ID;
-- 2.Write a query to display job title, employee name, and the difference between salary of the employee and minimum salary for the job.
SELECT job_title, first_name, salary-min_salary 'Salary - Min_Salary'
FROM employees
NATURAL JOIN jobs;
-- 3.Write a query to find the employee ID, job title, number of days between ending date and starting date for all jobs in department 90.
SELECT employee_id, job_title, end_date-start_date Days
FROM job_history
NATURAL JOIN jobs
WHERE department_id=90;
-- 4.Write a query to get the department name and average salary in the department
SELECT department_name AS 'Department Name', AVG(salary) AS 'Average Salary'
FROM departments
JOIN employees USING (department_id)
GROUP BY department_name;

