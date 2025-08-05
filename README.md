# HR Analytics Project with SQL and Power BI

As a data analyst in training, I wanted to explore a domain that directly impacts business strategy and employee well-being, Human Resources. 
This project is the result of a hands-on exercise in working with imperfect HR data, cleaning and transforming it with SQL and presenting the findings through a clear, interactive Power BI dashboard.

It’s not just about the numbers, it’s about telling a meaningful story using data.

---

## Objective

The aim of this project was to:

- Clean and prepare HR data using SQL
- Define and analyze key HR performance indicators (KPIs)
- Build an interactive Power BI dashboard to make the insights accessible and actionable
- Practice real-world analytical thinking, from data wrangling to business storytelling

---

## Tools Used

- **MySQL** – For data cleaning, transformation, and deriving metrics  
- **Power BI** – For building visuals and dashboards  
- **Excel** – For quick validation, formatting, and Power BI import  
- **GitHub** – To host and version the project  

---

## Dataset Overview

The dataset simulates employee records and includes:

- Demographics: gender, race, birth date, location
- Employment details: department, job title, hire and termination dates
- Employment type: remote or HQ

While being fictional, this dataset closely reflects the type of data available in real HR systems and helped simulate realistic data challenges.

---

## KPIs and Metrics Explored

The analysis covered common HR metrics that offer insights into organizational health and employee trends:

- Headcount by gender, department, and state
- Racial and ethnic diversity of the workforce
- Employee age group distributions
- Proportion of remote vs headquarters-based employees
- Tenure (overall and department-wise)
- Attrition and turnover rates by department
- Job title frequency
- Historical hiring and termination trends

These KPIs serve as the foundation for workforce planning, diversity tracking, and retention strategies.

---

## Data Cleaning & Transformation

The raw dataset required significant preparation before analysis:

- **Standardized date formats** from inconsistent formats like `MM/DD/YYYY` vs `YYYY-MM-DD`
- **Created age and tenure columns** using SQL `DATEDIFF` and conditional logic
- **Handled null or placeholder values** in `termdate` and other critical fields
- **Created new features** like age groupings, tenure groupings, attrition flags

These steps were done entirely in SQL to ensure the data was ready for analysis before importing into Power BI.

---

## Key Business Questions Explored

I approached the dataset by asking realistic HR and business questions, such as:

- What is the gender distribution of the workforce?
- How diverse is the organization by race and ethnicity?
- What age groups dominate the employee population?
- How many employees work remotely versus on-site?
- Which departments have the highest turnover rates?
- What is the average tenure of employees across departments?
- How have hiring and terminations changed over time?
- What are the most common roles or job titles?
- Which states have the highest headcount?

These questions formed the basis for SQL exploration and later visualized into Power BI charts.

---

## Power BI Dashboard

The Power BI dashboard provides an interactive view of all key HR trends. The main sections include:

1. **Workforce Composition**  
   - Gender and race breakdown  
   - Age group distribution  
   - Job title frequencies  

2. **Geographical Insights**  
   - Headcount by U.S. state  
   - Remote vs headquarters staff  

3. **Turnover & Retention**  
   - Hiring vs attrition trends over time  
   - Turnover rates by department  
   - Average tenure by department  

Each visual can be filtered or interacted with to help HR managers make data-driven decisions.

<img width="1233" height="718" alt="image" src="https://github.com/user-attachments/assets/69901e45-64e7-416e-b50f-bedf00a71c8d" />

<img width="1127" height="702" alt="image" src="https://github.com/user-attachments/assets/6a7d964b-f7c2-4770-9991-992e31a38cb1" />

---

## Key Takeaways

This project helped me:

- Practice working with messy, real-world data
- Develop SQL skills for data wrangling and KPI derivation
- Design dashboards that tell a clear, compelling story
- Build confidence in using Power BI for end-to-end reporting

It reinforced that analytics is more than tools — it's about asking the right questions, structuring data for answers, and delivering insights that matter.

---

## Acknowledgements

Project inspired by:  
**[SQL & PowerBI Portfolio Project for Data Analysts – YouTube](https://youtu.be/PzyZI9uLXvY)**

---

## About Me

I’m an aspiring data analyst, actively building my portfolio by working on real-world inspired case studies in business, operations, HR analytics and many more. This project is part of that journey. 
Thank you for reading!

Feel free to connect or explore my other work:  
[GitHub - Sowmyashree21](https://github.com/Sowmyashree21)
