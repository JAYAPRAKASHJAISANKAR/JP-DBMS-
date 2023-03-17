SELECT * FROM todos.todos;

USE todos;

-- todos due tomorrow
SELECT * 
FROM todos
WHERE dueDate = '2023-02-17';

-- todos order by dueDate
SELECT * 
FROM todos
ORDER BY dueDate;


-- find all tasks that contain 'dry'
SELECT * 
FROM todos
WHERE task LIKE '%dry%';

-- find all tasks due from next week onwards
SELECT * 
FROM todos
WHERE dueDate >= '2023-02-20';

-- find all tasks due in the next week (20-2 to 24-02) 
SELECT * 
FROM todos
WHERE dueDate BETWEEN '2023-02-20' AND '2023-02-24';

-- find all tasks due on 2023-02-17, 2023-02-24, 2023-03-03
SELECT * 
FROM todos
WHERE dueDate IN ('2023-02-17', '2023-02-24', '2023-03-03');

-- Medium
-- todos order by dueDate and for each dueDate, order by task alphabetically in ascending order 
SELECT * 
FROM todos
ORDER BY dueDate, task;

-- todos starting with Buy and ending with shoes
SELECT * 
FROM todos
WHERE task LIKE '%buy' AND task LIKE '%shoes';

-- Requires Internet reference
-- Display the count of todos in the database
SELECT COUNT(*)
FROM todos;
-- 45

-- Hard
-- Find the task with the last due date
SELECT MAX(dueDate)
FROM todos;
-- 2023-03-15


-- Display the days left for 'Buy groceries' task
SELECT DATEDIFF(dueDate, '2023-02-16')
FROM todos
WHERE task = 'Buy groceries';
-- 4







