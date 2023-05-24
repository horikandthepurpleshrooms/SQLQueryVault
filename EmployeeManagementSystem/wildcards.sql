/*
  % (percent sign): It's used to represent any sequence of characters.
  For example, if you search for 'A%', it will match any string that starts with 'A',followed by zero or more characters.
*/

/*
  _ (underscore): It matches any single character.
  For example, 'H_t' will match 'Hat', 'Hot', or any three-letter word where the second letter is 'a' or 'o'.
*/

/*
  [] (square brackets): It matches any single character within the specified range or set.
  For example, [aeiou] will match any vowel, while [0-9] will match any digit from 0 to 9.
*/
/*
  [^] (caret within square brackets): It matches any single character not within the specified range or set.
  For example, [^aeiou] will match any consonant, and [^0-9] will match any character that is not a digit.
*/

-- Select all employees whose first name start with 'J'
SELECT * FROM employee WHERE first_name LIKE 'J%';

-- Select all clients whose names end with 'son'
SELECT * FROM clients WHERE client_name LIKE '%son';

-- Select all branches whose names contain 'stan' anywhere in the name
SELECT * FROM branch WHERE branch_name LIKE '%stan%';

-- Select all branches with id numbers starting with '1'
SELECT * FROM branch WHERE branch_id LIKE '1%';

-- Select all employees whose first names have 'e' as the second letter
SELECT * FROM employee WHERE first_name LIKE '_e%';

-- Select all employees with first names starting with a vowel
SELECT * FROM employee WHERE first_name LIKE '[aeiou]%';

-- Select all clients whose names do not contain the letter 'a'
SELECT * FROM clients WHERE client_name LIKE '%[^a]%';
