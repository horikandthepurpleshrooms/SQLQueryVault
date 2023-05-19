-- This is a single-line comment in SQL

/* This is a
   multi-line comment
   in SQL */

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
