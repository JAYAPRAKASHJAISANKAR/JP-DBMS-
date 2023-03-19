SELECT statement is used to select data from a database.

SELECT DISTINCT statement is used to return only distinct (different) values.
Inside a table, a column often contains many duplicate values; and sometimes you only want to list the different (distinct) values.

WHERE clause is used to filter records.
It is used to extract only those records that fulfill a specified condition.

WHERE clause can be combined with AND, OR, and NOT operators.

The AND and OR operators are used to filter records based on more than one condition:
AND operator displays a record if all the conditions separated by AND are TRUE.
OR operator displays a record if any of the conditions separated by OR is TRUE.
NOT operator displays a record if the condition(s) is NOT TRUE.

ORDER BY keyword is used to sort the result-set in ascending or descending order.
ORDER BY keyword sorts the records in ascending order by default. To sort the records in descending order, use the DESC keyword.

INSERT INTO statement is used to insert new records in a table.
It is possible to write the INSERT INTO statement in two ways:
1. Specify both the column names and the values to be inserted.
2. If you are adding values for all the columns of the table, you do not need to specify the column names in the SQL query. However, make sure the order of the values is in the same order as the columns in the table.

NULL value is a field with no value.
If a field in a table is optional, it is possible to insert a new record or update a record without adding a value to this field. Then, the field will be saved with a NULL value.

NULL value is different from a zero value or a field that contains spaces. A field with a NULL value is one that has been left blank during record creation!
It is not possible to test for NULL values with comparison operators, such as =, <, or <>.
We will have to use the IS NULL and IS NOT NULL operators instead.

UPDATE statement is used to modify the existing records in a table.

DELETE statement is used to delete existing records in a table.
Be careful when deleting records in a table! Notice the WHERE clause in the DELETE statement. The WHERE clause specifies which record(s) should be deleted. If you omit the WHERE clause, all records in the table will be deleted!

SELECT TOP clause is used to specify the number of records to return.
SELECT TOP clause is useful on large tables with thousands of records. Returning a large number of records can impact performance.
Not all database systems support the SELECT TOP clause. MySQL supports the LIMIT clause to select a limited number of records, while Oracle uses FETCH FIRST n ROWS ONLY and ROWNUM.

MIN() function returns the smallest value of the selected column.

MAX() function returns the largest value of the selected column.

COUNT() function returns the number of rows that matches a specified criterion.

AVG() function returns the average value of a numeric column. 

SUM() function returns the total sum of a numeric column. 

LIKE operator is used in a WHERE clause to search for a specified pattern in a column.
There are two wildcards often used in conjunction with the LIKE operator:
 The percent sign (%) represents zero, one, or multiple characters
 The underscore sign (_) represents one, single character
 
IN operator allows you to specify multiple values in a WHERE clause.
IN operator is a shorthand for multiple OR conditions.

BETWEEN operator selects values within a given range. The values can be numbers, text, or dates.
BETWEEN operator is inclusive: begin and end values are included. 

JOIN clause is used to combine rows from two or more tables, based on a related column between them.

(INNER) JOIN: Returns records that have matching values in both tables
INNER JOIN keyword selects records that have matching values in both tables.

LEFT (OUTER) JOIN: Returns all records from the left table, and the matched records from the right table.
LEFT JOIN keyword returns all records from the left table (table1), and the matching records from the right table (table2). The result is 0 records from the right 
side, if there is no match.

RIGHT (OUTER) JOIN: Returns all records from the right table, and the matched records from the left table.
RIGHT JOIN keyword returns all records from the right table (table2), and the matching records from the left table (table1). The result is 0 records from the left 
side, if there is no match.

FULL (OUTER) JOIN: Returns all records when there is a match in either left or right table.
FULL OUTER JOIN keyword returns all records when there is a match in left (table1) or right (table2) table records.
FULL OUTER JOIN and FULL JOIN are the same.

self join is a regular join, but the table is joined with itself.

UNION operator is used to combine the result-set of two or more SELECT statements.

Every SELECT statement within UNION must have the same number of columns
The columns must also have similar data types
The columns in every SELECT statement must also be in the same order.
UNION operator selects only distinct values by default. To allow duplicate values, use UNION ALL.

GROUP BY statement groups rows that have the same values into summary rows.
The GROUP BY statement is often used with aggregate functions (COUNT(), MAX(), MIN(), SUM(), AVG()) to group the result-set by one or more columns.

HAVING clause was added to SQL because the WHERE keyword cannot be used with aggregate functions.

EXISTS operator is used to test for the existence of any record in a subquery.
EXISTS operator returns TRUE if the subquery returns one or more records.

ANY and ALL operators allow you to perform a comparison between a single column value and a range of other values.
The ANY operator:
returns a boolean value as a result
returns TRUE if ANY of the subquery values meet the condition
ANY means that the condition will be true if the operation is true for any of the values in the range.

SELECT INTO statement copies data from one table into a new table.
The new table will be created with the column-names and types as defined in the old table. You can create new column names using the AS clause.

INSERT INTO SELECT statement copies data from one table and inserts it into another table.
INSERT INTO SELECT statement requires that the data types in source and target tables match.
The existing records in the target table are unaffected.

CASE expression goes through conditions and returns a value when the first condition is met (like an if-then-else statement). So, once a condition is true, it will stop reading and return the result. If no conditions are true, it returns the value in the ELSE clause.
If there is no ELSE part and no conditions are true, it returns NULL.

IFNULL() function lets you return an alternative value if an expression is NULL or we can use the COALESCE() function, like this.

Single line comments start with --.
Any text between -- and the end of the line will be ignored (will not be executed).

Multi-line comments start with /* and end with */.
Any text between /* and */ will be ignored.

Arithmetic Operators
Operator	Description:
+	Add	
-	Subtract	
*	Multiply	
/	Divide	
%	Modulo

Comparison Operators
Operator	Description:
=	Equal to	
>	Greater than	
<	Less than	
>=	Greater than or equal to	
<=	Less than or equal to	
<>	Not equal to

Compound Operators
Operator	Description
+=	Add equals
-=	Subtract equals
*=	Multiply equals
/=	Divide equals
%=	Modulo equals
&=	Bitwise AND equals
^-=	Bitwise exclusive equals
|*=	Bitwise OR equals








