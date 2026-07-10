# Employee Database Analysis with SQL

## Project Overview

This project analyzes employee data using SQL to answer key business questions related to workforce distribution, employee salaries, and hiring trends. The analysis demonstrates how SQL can be used to organize, retrieve, and analyze data to generate meaningful business insights.

The project applies SQL concepts including filtering, sorting, grouping, aggregate functions, joins, and subqueries to support data-driven decision-making.

## Database Description

This project uses an employee database consisting of two related tables:

### Employees Table

- Employee ID
- Employee Name
- Salary
- Department ID
- Hire Date

### Departments Table

- Department ID
- Department Name

The two tables are linked through the **Department ID**, allowing SQL `JOIN` operations to combine employee information with department details for analysis.

## Tools Used

- **SQLite** – Database creation, querying, and analysis
- **SQL** – Data retrieval and analysis
- **Microsoft Word** – Project documentation

## Business Questions

The project was designed to answer the following business questions:

- How many employees are in the company?
- How many departments are available?
- Which department has the most employees?
- Which department has the fewest employees?
- Who are the top three highest-paid employees?
- Which employees earn above the company average salary?
- Which departments have an average salary above the company average salary?
- Who is the longest-serving employee?

## SQL Skills Demonstrated

- Data retrieval (`SELECT`)
- Filtering (`WHERE`)
- Sorting (`ORDER BY`)
- Aggregation (`COUNT`, `AVG`, `MAX`)
- Grouping (`GROUP BY`)
- Filtering grouped data (`HAVING`)
- Table relationships (`JOIN`)
- Subqueries

 ## Key Findings

- The company has a total of **15 employees**.
- The company consists of **5 departments**.
- The Finance department has the highest number of employees, with **4 employees**.
- The HR department has the lowest number of employees, with **2 employees**.
- The Finance department recorded the highest average salary of **75,000**.
- The company's top three highest-paid employees are **Olivia, Esther, and Grace**.
- Olivia from the Finance department has the highest salary, earning **85,000**.
- Esther from the Finance department follows with a salary of **80,000**.
- Grace from the Finance department earns a salary of **76,000**.
- **Seven employees** earn above the company's average salary.
- The Finance and IT departments have average salaries above the company average. The Finance department has an average salary of **75,000**, while the IT department has an average salary of **72,000**.
- The longest-serving employee is **Olivia**, who joined the company on **20 January 2017**.

## Business Recommendations

1. Review staffing levels in the HR department to determine whether additional employees are needed to support the company's operations.
2. Evaluate salary differences across departments to ensure compensation remains fair, competitive, and aligned with employee roles and responsibilities.
3. Recognize and retain long-serving employees by providing career development opportunities and retention programs to preserve valuable experience within the company.
4. Regularly monitor workforce and salary trends using data analysis to support informed hiring, budgeting, and workforce planning decisions.

## Files Included

- **employee_workforce_salary_analysis.sql** – SQL queries used to anlyse the employee workforce and salary data.
- **README.md** – Provides an overview of the project, including the project objective, business questions, key findings, and business recommendations.
- **Employee_Workforce_and_Salary_Analysis_Report.pdf** - Complete project report containing the SQL queries, query results, interpretations, key findings, and business recommendations.
