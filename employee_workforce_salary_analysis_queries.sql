
BEGIN TRANSACTION;

DROP TABLE IF EXISTS "departments";

CREATE TABLE "departments" (
    "department_id" INTEGER,
    "department_name" TEXT
);

DROP TABLE IF EXISTS "employees";

CREATE TABLE "employees" (
    "employee_id" INTEGER,
    "name" TEXT,
    "department_id" INTEGER,
    "salary" INTEGER,
    "hire_date" TEXT
);

INSERT INTO "departments" ("department_id","department_name") VALUES
(1,'HR'),
(2,'Finance'),
(3,'IT'),
(4,'Sales'),
(5,'Marketing');

INSERT INTO "employees" ("employee_id","name","department_id","salary","hire_date") VALUES
(101,'Alice',2,65000,'2021-03-15'),
(102,'Brian',3,72000,'2020-07-21'),
(103,'Catherine',1,55000,'2022-01-10'),
(104,'Daniel',4,48000,'2023-05-18'),
(105,'Esther',2,80000,'2019-09-30'),
(106,'Frank',5,53000,'2021-11-11'),
(107,'Grace',3,76000,'2020-04-08'),
(108,'Henry',4,51000,'2022-08-19'),
(109,'Irene',5,60000,'2023-02-14'),
(110,'James',2,70000,'2018-06-01'),
(111,'Kevin',3,68000,'2021-12-05'),
(112,'Linda',1,59000,'2020-10-25'),
(113,'Mercy',4,47000,'2022-03-07'),
(114,'Noah',5,62000,'2019-07-16'),
(115,'Olivia',2,85000,'2017-01-20');

COMMIT;


-- ========================================================
-- Employee Workforce & Salary Analysis
-- Author: Grace Nthambi Wambua
-- ========================================================


-- ========================================================
-- REPORT 1: Workforce Overview
-- ========================================================


-- Question 1: How many employees does the company have?

SELECT COUNT(*) AS total_employees
FROM employees;


-- Question 2: How many departments does the company have?

SELECT COUNT(*) AS total_departments
FROM departments;


-- Question 3: Which departments have the highest and lowest number of employees?
-- Return department name and employee count.
-- Sort from highest to lowest.

SELECT
    d.department_name,
    COUNT(e.employee_id) AS total_employees
FROM departments d
JOIN employees e
ON e.department_id = d.department_id
GROUP BY d.department_name
ORDER BY total_employees DESC;

-- ========================================================
-- REPORT 2: Salary Analysis
-- ========================================================


-- Question 4: What is the average salary in each department?

SELECT
    d.department_name,
    AVG(e.salary) AS avg_salary
FROM employees e
JOIN departments d
ON e.department_id = d.department_id
GROUP BY d.department_name;


-- Question 5: Which department has the highest average salary?

SELECT
    d.department_name,
    AVG(e.salary) AS avg_salary
FROM employees e
JOIN departments d
ON e.department_id = d.department_id
GROUP BY d.department_name
ORDER BY avg_salary DESC
LIMIT 1;


-- Question 6: List the top 3 highest-paid employees in the company.
-- Include:
-- Employee name
-- Department
-- Salary

SELECT
    e.name,
    d.department_name,
    e.salary
FROM employees e
JOIN departments d
ON e.department_id = d.department_id
ORDER BY e.salary DESC
LIMIT 3;


-- ========================================================
-- REPORT 3: HR Insights
-- ========================================================


-- Question 7: Which employees earn above the company average salary?

SELECT
    e.name,
    d.department_name,
    e.salary
FROM employees e
JOIN departments d
ON e.department_id = d.department_id
WHERE e.salary >
(
    SELECT AVG(salary)
    FROM employees
);


-- Question 8: Which departments have an average salary above the company average salary?

SELECT
    d.department_name,
    AVG(e.salary) AS dept_avg_salary
FROM employees e
JOIN departments d
ON e.department_id = d.department_id
GROUP BY d.department_name
HAVING AVG(e.salary) >
(
    SELECT AVG(salary)
    FROM employees
);


-- Question 9: Which employee has worked at the company the longest?

SELECT
    e.name,
    e.hire_date
FROM employees e
ORDER BY e.hire_date ASC
LIMIT 1;


-- ========================================================
-- End of Analysis
-- ========================================================























