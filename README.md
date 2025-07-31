# HR Analytics Project (SQL + Power BI)

This project demonstrates how to clean, transform, and analyze HR data using MySQL and build an HR analytics dashboard in Power BI. 
The project is based on a mock dataset and simulates real-world HR metrics and business analysis.

## Project Objective

To derive business insights about employee demographics, tenure, diversity trends using SQL queries and present them via interactive Power BI visuals.

## Tools Used

- MySQL
- Power BI

## Data Description

The dataset consists of employee-level data including:
- Employee ID
- Gender
- Race
- Department
- Job Title
- Hire Date
- Termination Date
- Birthdate
- Location (State and Headquarters/Remote)
- Age (derived)
- Tenure (derived)

## Data Processing and Cleaning

Performed entirely in MySQL:
- Cleaned and standardized date columns (`birthdate`, `hire_date`, `termdate`)
- Converted string dates into `DATE` format
- Replaced empty and invalid values (e.g., `0000-00-00`, `''`) with `NULL`
- Calculated employee age using `TIMESTAMPDIFF`
- Computed tenure for employees who have been terminated
- Ensured the dataset excluded underage employees (< 18 years)

## SQL Analysis Highlights

The following queries were used to generate visual insights:

1. Gender distribution of current employees
2. Race/ethnicity breakdown of active workforce
3. Age group distribution and cross-tabulation with gender
4. Location distribution: headquarters vs remote
5. Average length of employment for terminated employees
6. Gender distribution by department
7. Job title distribution across the company
8. Turnover rate by department
9. Employee count by U.S. states
10. Hiring and termination trends over time
11. Average tenure by department

## Power BI Dashboard Features

The Power BI report includes visualizations based on the above queries, such as:

- **Gender Distribution**: Count of male, female, and non-conforming employees
- **Race Distribution**: Breakdown of racial demographics
- **Location Split**: Percentage of employees in headquarters vs remote
- **Change in Workforce Over Time**: Net change in employees per year (2000–2020)
- **Age Distribution**: Age group breakdown and gender split
- **Employees by State**: Map visual of employee count across states
- **Turnover Rate by Department**: Comparative view of attrition levels
- **Department-wise Gender Distribution**: Bar chart with gender grouping
