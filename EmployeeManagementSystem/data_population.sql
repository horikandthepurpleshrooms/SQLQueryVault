-- Corporate
INSERT INTO employee VALUES(100, "David", "Wallace", "1967-11-17", "M", 250000, NULL, NULL);

INSERT INTO branch VALUES(1, "Corporate", 100, "2006-02-09");

UPDATE employee
SET branch_id = 1
WHERE emp_id = 100;

INSERT INTO employee VALUES(101, "Jan", "Levinson", "1961-05-11", "F", 110000, 100, 1);

-- Scranton
INSERT INTO employee VALUES(102, "Michael", "Scott", "1964-03-15", "M", 80000, 100, NULL);

INSERT INTO branch VALUES(2, "Scranton", 102, "1992-04-06");

UPDATE employee
SET branch_id = 2
WHERE emp_id = 102;

INSERT INTO employee VALUES(103, "Angela", "Martin", "1971-06-25", "F", 63000, 102, 2);
INSERT INTO employee VALUES(104, "Kally", "Kapoor", "1980-02-05", "F", 55000, 102, 2);
INSERT INTO employee VALUES(105, "Stanley", "Hudson", "1958-02-19", "M", 69000, 102, 2);

-- Stamford
INSERT INTO employee VALUES(106, "Josh", "Porter", "1969-09-05", "M", 80000, 100, NULL);

INSERT INTO branch VALUES(3, "Stamford", 106, "1998-02-13");

UPDATE employee
SET branch_id = 3
WHERE emp_id = 106;

INSERT INTO employee VALUES(107, "Andy", "Bernard", "1973-07-22", "M", 65000, 106, 3);
INSERT INTO employee VALUES(108, "Jim", "Halpert", "1978-10-01", "M", 71000, 106, 3);


-- BRANCH SUPPLIER
INSERT INTO branch_supplier VALUES(2, "Hammer Mill", "Paper");
INSERT INTO branch_supplier VALUES(2, "Textile Mills", "Fabric");
INSERT INTO branch_supplier VALUES(2, "Food Packaging", "Packaging");
INSERT INTO branch_supplier VALUES(2, "Ceramic Crafters", "Ceramics");
INSERT INTO branch_supplier VALUES(2, "Plastic Solutions", "Plastic");
INSERT INTO branch_supplier VALUES(2, "Electro Parts", "Electronics");
INSERT INTO branch_supplier VALUES(3, "Steel Co.", "Metal");
INSERT INTO branch_supplier VALUES(3, "Wood Works", "Lumber");
INSERT INTO branch_supplier VALUES(3, "Auto Parts", "Automotive");
INSERT INTO branch_supplier VALUES(3, "Glass Manufacturing", "Glass");
INSERT INTO branch_supplier VALUES(3, "Chemical Supply", "Chemicals");

-- CLIENT
INSERT INTO client VALUES(407, 'Law Firm', 3);
INSERT INTO client VALUES(409, 'Hotel Chain', 3);
INSERT INTO client VALUES(405, 'Central Bank', 3);
INSERT INTO client VALUES(408, 'Retail Store', 2);
INSERT INTO client VALUES(402, 'Electric Corp', 2);
INSERT INTO client VALUES(406, 'Media Company', 2);
INSERT INTO client VALUES(404, 'Tech Solutions', 2);
INSERT INTO client VALUES(403, 'Valley Hospital', 3);
INSERT INTO client VALUES(401, 'Scranton University', 3);
INSERT INTO client VALUES(410, 'Transportation Services', 2);

-- WORKS_WITH
INSERT INTO works_with VALUES(105, 400, 55000);
INSERT INTO works_with VALUES(102, 401, 267000);
INSERT INTO works_with VALUES(108, 402, 22500);
INSERT INTO works_with VALUES(107, 403, 5000);
INSERT INTO works_with VALUES(108, 403, 12000);
INSERT INTO works_with VALUES(105, 404, 33000);
INSERT INTO works_with VALUES(107, 405, 26000);
INSERT INTO works_with VALUES(102, 406, 15000);
INSERT INTO works_with VALUES(105, 406, 130000);
