-- This is a single-line comment in SQL

/* This is a
   multi-line comment
   in SQL */

/*
COMPARISON OPERATORS: <, >, <=, >=, =, <>, !=, !<, !>, AND, OR

 = (Equals)
 > (Greater Than)
 < (Less Than)
 >= (Greater Than or Equal To)
 <= (Less Than or Equal To)
 <> (Not Equal To)
 != (Not Equal To, non-ISO standard)
 !< (Not Less Than, non-ISO standard)
 !> (Not Greater Than, non-ISO standard)
 AND: Combines two or more conditions, requiring all conditions to be true for a row to be included in the result set.
 OR: Combines two or more conditions, allowing any of the conditions to be true for a row to be included in the result set
*/

-- Creating a table
CREATE TABLE student (
	student_id INT,
	name VARCHAR(20) NOT NULL,
	major VARCHAR(20), 
	PRIMARY KEY(student_id)
);

-- Dropping the whole table with everything in it
DROP TABLE student;

-- Returns everything from the specified location
SELECT * FROM student;

SELECT student.name, student.major
FROM student;

SELECT *
FROM student
ORDER BY major, student_id; -- Default is ASC, you can specify DESC if wanted

SELECT *
FROM student
LIMIT 3;

SELECT *
FROM student
ORDER BY student_id DESC
LIMIT 2;

SELECT *
FROM student
WHERE major = "CompSci";

SELECT name, major
FROM student
WHERE major = "CompSci" OR major = "Engineering";

SELECT *
FROM student
WHERE name IN ("Horik", "Tudorel");

/* Retrieve information about the structure of a table.
   It provides metadata about the columns or fields within a table. */
DESCRIBE student;

INSERT INTO student VALUES(1, "Horik", "CompSci");

UPDATE student
SET major = "Computer Science"
WHERE major = "CompSci";

UPDATE student
SET major = "Biochemistry"
WHERE major = "Bio" OR major = "Chemistry";

UPDATE student
SET name = "Tudorel", major = "Undecided"
WHERE student_id = 1;

-- If we get rid of WHERE, every row from the table will be affected
UPDATE student
SET major = "Undecided";

-- Delete all rows from student
DELETE FROM student;

DELETE FROM student
WHERE student_id = 5;

DELETE FROM student
WHERE name = "Horik" AND major = "CompSci";
