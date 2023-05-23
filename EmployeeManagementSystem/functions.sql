-- Find the number of employees
SELECT COUNT(emp_id) AS number_of_employees
FROM employee;

-- Find the number of female employeesborn after 1970
SELECT COUNT(emp_id) AS female_employees_born_after_1970
FROM employee
WHERE sex = "F" AND birth_day > "1970-01-01";

-- Find the average of all employees salaries
SELECT AVG(salary) AS average_salary
FROM employee;

-- Find the sum of all employees salaries
SELECT SUM(salary) AS sum_salary
FROM employee;

-- Find out how many males and females there are
SELECT COUNT(sex) as people, sex
FROM employee
GROUP BY sex;

-- Find the total sales of each salesman
SELECT SUM(total_sales) AS total_sales, emp_id
FROM works_with
GROUP BY emp_id;
