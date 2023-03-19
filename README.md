SELECT statement is used to select data from a database.

SELECT DISTINCT statement is used to return only distinct (different) values.
Inside a table, a column often contains many duplicate values; and sometimes you only want to list the different (distinct) values.

WHERE clause is used to filter records.
It is used to extract only those records that fulfill a specified condition.

WHERE clause can be combined with AND, OR, and NOT operators.

ADD command is used to add a column in an existing table.

AS command is used to rename a column or table.

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


CREATE DATABASE statement is used to create a new SQL database.

DROP DATABASE statement is used to drop an existing SQL database.

BACKUP DATABASE statement is used in SQL Server to create a full back up of an existing SQL database.

CREATE TABLE statement is used to create a new table in a database.

DROP TABLE statement is used to drop an existing table in a database.
Be careful before dropping a table. Deleting a table will result in loss of complete information stored in the table!

ALTER TABLE statement is used to add, delete, or modify columns in an existing table.
ALTER TABLE statement is also used to add and drop various constraints on an existing table.

Constraints can be specified when the table is created with the CREATE TABLE statement, or after the table is created with the ALTER TABLE statement.

NOT NULL constraint enforces a column to NOT accept NULL values.
This enforces a field to always contain a value, which means that you cannot insert a new record, or update a record without adding a value to this field.

UNIQUE constraint ensures that all values in a column are different.

Both the UNIQUE and PRIMARY KEY constraints provide a guarantee for uniqueness for a column or set of columns.
A PRIMARY KEY constraint automatically has a UNIQUE constraint.
However, you can have many UNIQUE constraints per table, but only one PRIMARY KEY constraint per table.

PRIMARY KEY constraint uniquely identifies each record in a table.

Primary keys must contain UNIQUE values, and cannot contain NULL values.
A table can have only ONE primary key; and in the table, this primary key can consist of single or multiple columns (fields).

FOREIGN KEY constraint is used to prevent actions that would destroy links between tables.
FOREIGN KEY is a field (or collection of fields) in one table, that refers to the PRIMARY KEY in another table.
The table with the foreign key is called the child table, and the table with the primary key is called the referenced or parent table.

CHECK constraint is used to limit the value range that can be placed in a column.
If you define a CHECK constraint on a column it will allow only certain values for this column.
If you define a CHECK constraint on a table it can limit the values in certain columns based on values in other columns in the row.

DEFAULT constraint is used to set a default value for a column.
The default value will be added to all new records, if no other value is specified.

CREATE INDEX statement is used to create indexes in tables.
Indexes are used to retrieve data from the database more quickly than otherwise. The users cannot see the indexes, they are just used to speed up searches/queries.
Updating a table with indexes takes more time than updating a table without (because the indexes also need an update). So, only create indexes on columns that will be frequently searched against.

AUTO INCREMENT Field
Auto-increment allows a unique number to be generated automatically when a new record is inserted into a table.
Often this is the primary key field that we would like to be created automatically every time a new record is inserted.
AUTO_INCREMENT keyword to perform an auto-increment feature.
By default, the starting value for AUTO_INCREMENT is 1, and it will increment by 1 for each new record.

DATE - format YYYY-MM-DD
DATETIME - format: YYYY-MM-DD HH:MI:SS
TIMESTAMP - format: YYYY-MM-DD HH:MI:SS
YEAR - format YYYY or YY

String Data Types

Data type	Description
CHAR(size)	A FIXED length string (can contain letters, numbers, and special characters). The size parameter specifies the column length in characters - can be from 0 to 255. Default is 1

VARCHAR(size)	A VARIABLE length string (can contain letters, numbers, and special characters). The size parameter specifies the maximum string length in characters - can be from 0 to 65535

BINARY(size)	Equal to CHAR(), but stores binary byte strings. The size parameter specifies the column length in bytes. Default is 1

VARBINARY(size)	Equal to VARCHAR(), but stores binary byte strings. The size parameter specifies the maximum column length in bytes.

TINYBLOB	For BLOBs (Binary Large Objects). Max length: 255 bytes

TINYTEXT	Holds a string with a maximum length of 255 characters

TEXT(size)	Holds a string with a maximum length of 65,535 bytes

BLOB(size)	For BLOBs (Binary Large Objects). Holds up to 65,535 bytes of data

MEDIUMTEXT	Holds a string with a maximum length of 16,777,215 characters

MEDIUMBLOB	For BLOBs (Binary Large Objects). Holds up to 16,777,215 bytes of data

LONGTEXT	Holds a string with a maximum length of 4,294,967,295 characters

LONGBLOB	For BLOBs (Binary Large Objects). Holds up to 4,294,967,295 bytes of data

ENUM(val1, val2, val3, ...)	A string object that can have only one value, chosen from a list of possible values. You can list up to 65535 values in an ENUM list. If a 
value is inserted that is not in the list, a blank value will be inserted. The values are sorted in the order you enter them
SET(val1, val2, val3, ...)	A string object that can have 0 or more values, chosen from a list of possible values. You can list up to 64 values in a SET list


Numeric Data Types

Data type	Description
BIT(size)	A bit-value type. The number of bits per value is specified in size. The size parameter can hold a value from 1 to 64. The default value for size is 1.
TINYINT(size)	A very small integer. Signed range is from -128 to 127. Unsigned range is from 0 to 255. The size parameter specifies the maximum display width (which is 
255)

BOOL	Zero is considered as false, nonzero values are considered as true.

BOOLEAN	Equal to BOOL
SMALLINT(size)	A small integer. Signed range is from -32768 to 32767. Unsigned range is from 0 to 65535. The size parameter specifies the maximum display width (which 
is 255)

MEDIUMINT(size)	A medium integer. Signed range is from -8388608 to 8388607. Unsigned range is from 0 to 16777215. The size parameter specifies the maximum display 
width (which is 255)

INT(size)	A medium integer. Signed range is from -2147483648 to 2147483647. Unsigned range is from 0 to 4294967295. The size parameter specifies the maximum display 
width (which is 255)

INTEGER(size)	Equal to INT(size)

BIGINT(size)	A large integer. Signed range is from -9223372036854775808 to 9223372036854775807. Unsigned range is from 0 to 18446744073709551615. The size parameter 
specifies the maximum display width (which is 255)

FLOAT(size, d)	A floating point number. The total number of digits is specified in size. The number of digits after the decimal point is specified in the d parameter. 
This syntax is deprecated in MySQL 8.0.17, and it will be removed in future MySQL versions

FLOAT(p)	A floating point number. MySQL uses the p value to determine whether to use FLOAT or DOUBLE for the resulting data type. If p is from 0 to 24, the data type 
becomes FLOAT(). If p is from 25 to 53, the data type becomes DOUBLE()

DOUBLE(size, d)	A normal-size floating point number. The total number of digits is specified in size. The number of digits after the decimal point is specified in the 
d parameter

DOUBLE PRECISION(size, d)	 

DECIMAL(size, d)	An exact fixed-point number. The total number of digits is specified in size. The number of digits after the decimal point is specified in the d 
parameter. The maximum number for size is 65. The maximum number for d is 30. The default value for size is 10. The default value for d is 0.

DEC(size, d)	Equal to DECIMAL(size,d)
All the numeric data types may have an extra option: UNSIGNED or ZEROFILL. If you add the UNSIGNED option, MySQL disallows negative values for the column. If you add 
the ZEROFILL option, MySQL automatically also adds the UNSIGNED attribute to the column.

Date and Time Data Types

Data type	Description
DATE	A date. Format: YYYY-MM-DD. The supported range is from '1000-01-01' to '9999-12-31'

DATETIME(fsp)	A date and time combination. Format: YYYY-MM-DD hh:mm:ss. The supported range is from '1000-01-01 00:00:00' to '9999-12-31 23:59:59'. Adding DEFAULT and 
ON UPDATE in the column definition to get automatic initialization and updating to the current date and time.

TIMESTAMP(fsp)	A timestamp. TIMESTAMP values are stored as the number of seconds since the Unix epoch ('1970-01-01 00:00:00' UTC). Format: YYYY-MM-DD hh:mm:ss. The 
supported range is from '1970-01-01 00:00:01' UTC to '2038-01-09 03:14:07' UTC. Automatic initialization and updating to the current date and time can be specified 
using DEFAULT CURRENT_TIMESTAMP and ON UPDATE CURRENT_TIMESTAMP in the column definition

TIME(fsp)	A time. Format: hh:mm:ss. The supported range is from '-838:59:59' to '838:59:59'
YEAR	A year in four-digit format. Values allowed in four-digit format: 1901 to 2155, and 0000.
MySQL 8.0 does not support year in two-digit format.


String Data Types
Data type	Description	Max size	Storage
char(n)	Fixed width character string	8,000 characters	Defined width
varchar(n)	Variable width character string	8,000 characters	2 bytes + number of chars
varchar(max)	Variable width character string	1,073,741,824 characters	2 bytes + number of chars
text	Variable width character string	2GB of text data	4 bytes + number of chars
nchar	Fixed width Unicode string	4,000 characters	Defined width x 2
nvarchar	Variable width Unicode string	4,000 characters	 
nvarchar(max)	Variable width Unicode string	536,870,912 characters	 
ntext	Variable width Unicode string	2GB of text data	 
binary(n)	Fixed width binary string	8,000 bytes	 
varbinary	Variable width binary string	8,000 bytes	 
varbinary(max)	Variable width binary string	2GB	 
image	Variable width binary string	2GB	 
Numeric Data Types
Data type	Description	Storage
bit	Integer that can be 0, 1, or NULL	 
tinyint	Allows whole numbers from 0 to 255	1 byte
smallint	Allows whole numbers between -32,768 and 32,767	2 bytes
int	Allows whole numbers between -2,147,483,648 and 2,147,483,647	4 bytes
bigint	Allows whole numbers between -9,223,372,036,854,775,808 and 9,223,372,036,854,775,807	8 bytes
decimal(p,s)	Fixed precision and scale numbers.
Allows numbers from -10^38 +1 to 10^38 –1.

The p parameter indicates the maximum total number of digits that can be stored (both to the left and to the right of the decimal point). p must be a value from 1 to 38. Default is 18.

The s parameter indicates the maximum number of digits stored to the right of the decimal point. s must be a value from 0 to p. Default value is 0

5-17 bytes
numeric(p,s)	Fixed precision and scale numbers.
Allows numbers from -10^38 +1 to 10^38 –1.

The p parameter indicates the maximum total number of digits that can be stored (both to the left and to the right of the decimal point). p must be a value from 1 to 38. Default is 18.

The s parameter indicates the maximum number of digits stored to the right of the decimal point. s must be a value from 0 to p. Default value is 0

5-17 bytes
smallmoney	Monetary data from -214,748.3648 to 214,748.3647	4 bytes
money	Monetary data from -922,337,203,685,477.5808 to 922,337,203,685,477.5807	8 bytes
float(n)	Floating precision number data from -1.79E + 308 to 1.79E + 308.
The n parameter indicates whether the field should hold 4 or 8 bytes. float(24) holds a 4-byte field and float(53) holds an 8-byte field. Default value of n is 53.

4 or 8 bytes
real	Floating precision number data from -3.40E + 38 to 3.40E + 38	4 bytes

Date and Time Data Types
Data type	Description	Storage
datetime	From January 1, 1753 to December 31, 9999 with an accuracy of 3.33 milliseconds	8 bytes
datetime2	From January 1, 0001 to December 31, 9999 with an accuracy of 100 nanoseconds	6-8 bytes
smalldatetime	From January 1, 1900 to June 6, 2079 with an accuracy of 1 minute	4 bytes
date	Store a date only. From January 1, 0001 to December 31, 9999	3 bytes
time	Store a time only to an accuracy of 100 nanoseconds	3-5 bytes
datetimeoffset	The same as datetime2 with the addition of a time zone offset	8-10 bytes
timestamp	Stores a unique number that gets updated every time a row gets created or modified. The timestamp value is based upon an internal clock and does not correspond to real time. Each table may have only one timestamp variable	 
Other Data Types
Data type	Description
sql_variant	Stores up to 8,000 bytes of data of various data types, except text, ntext, and timestamp
uniqueidentifier	Stores a globally unique identifier (GUID)
xml	Stores XML formatted data. Maximum 2GB
cursor	Stores a reference to a cursor used for database operations
table	Stores a result-set for later processing

MS Access Data Types
Data type	Description	Storage
Text	Use for text or combinations of text and numbers. 255 characters maximum	 
Memo	Memo is used for larger amounts of text. Stores up to 65,536 characters. Note: You cannot sort a memo field. However, they are searchable	 
Byte	Allows whole numbers from 0 to 255	1 byte
Integer	Allows whole numbers between -32,768 and 32,767	2 bytes
Long	Allows whole numbers between -2,147,483,648 and 2,147,483,647	4 bytes
Single	Single precision floating-point. Will handle most decimals	4 bytes
Double	Double precision floating-point. Will handle most decimals	8 bytes
Currency	Use for currency. Holds up to 15 digits of whole dollars, plus 4 decimal places. Tip: You can choose which country's currency to use	8 bytes
AutoNumber	AutoNumber fields automatically give each record its own number, usually starting at 1	4 bytes
Date/Time	Use for dates and times	8 bytes
Yes/No	A logical field can be displayed as Yes/No, True/False, or On/Off. In code, use the constants True and False (equivalent to -1 and 0). Note: Null values are not allowed in Yes/No fields	1 bit
Ole Object	Can store pictures, audio, video, or other BLOBs (Binary Large Objects)	up to 1GB
Hyperlink	Contain links to other files, including web pages	 
Lookup Wizard	Let you type a list of options, which can then be chosen from a drop-down list	4 bytes



