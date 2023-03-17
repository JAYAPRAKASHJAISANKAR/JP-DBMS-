USE  exercise_hr;
-- 1
-- Write a query to find the name (first_name, last name), department ID and name of
-- all the employees.

SELECT employees.first_name, employees.last_name, employees.department_id, departments.department_name 
FROM employees 
INNER JOIN departments 
ON employees.department_id = departments.department_id;



-- SELECT d.department_name, CONCAT(e.first_name, ' ', e.last_name) AS manager_name, l.city

-- 2
-- Write a query to display job title, employee name, and the difference between salary
-- of the employee and minimum salary for the job.

SELECT jobs.job_title,concat( employees.first_name,'',employees.last_name) as name,employees.salary - jobs.min_salary AS salary_difference,min_salary
FROM employees
JOIN jobs ON employees.job_id = jobs.job_id;
-- 3
-- Write a query to find the employee ID, job title, number of days between ending
-- date and starting date for all jobs in department 90.





SELECT jh.employee_id, j.job_title, DATEDIFF(jh.end_date, jh.start_date) AS Days
FROM job_history jh
JOIN jobs j ON jh.job_id = j.job_id
WHERE jh.department_id = 90;





-- 4
-- Write a query to get the department name and average salary in the department.
-- (Hint: Notice that the column headings are also properly outputted here)
SELECT departments.department_name, AVG(employees.salary) AS average_salary
FROM employees
JOIN departments ON employees.department_id = departments.department_id
GROUP BY departments.department_name
order by departments.department_name asc;


-- 5
-- Write a query to display the department name, manager name, and city.
-- (Hint: Join 3 tables)

SELECT d.department_name, e.first_name , l.city
FROM departments d
JOIN employees e ON d.manager_id = e.employee_id
JOIN locations l ON d.location_id = l.location_id;







