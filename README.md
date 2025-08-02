# HR Analytics Project with SQL and Power BI

This project started as a deep dive into HR data, the kind of messy, inconsistent dataset that’s both frustrating and fun to work with. I followed along with a YouTube tutorial and decided to build it out into a full portfolio piece that showcases how I approach data cleaning, analysis, and storytelling using SQL and Power BI.

---

## About the Project

The dataset represents fictional employee information with things like hire and termination dates, department, gender, race, location, and so on. 
My goal was to:

- Clean and prepare the data using SQL
- Answer key HR-related business questions
- Build an interactive Power BI dashboard to present the insights

---

## Tools Used

- **MySQL** for data cleaning and transformation
- **Power BI** for creating visuals and the final dashboard
- **Excel** for some quick checks and viewing the CSVs
- **GitHub** to document the process and share the work

---

## KPIs and Metrics Covered

This project focused on exploring a range of HR-related KPIs using SQL, which were later visualized in Power BI. These metrics reflect the kinds of insights that HR and operations teams typically look for when analyzing workforce data.

- Gender breakdown of employees
- Diversity by race and ethnicity
- Employee distribution across age groups
- Remote vs headquarters staffing
- Average tenure of terminated employees
- Gender split across departments
- Frequency of job titles across the organization
- Turnover rate by department
- Headcount by state
- Hiring and termination trends over the years
- Average tenure across departments

## Data Cleaning Process

The original data had a few problems:
- Inconsistent date formats (some with slashes, some with dashes, some with timestamps)
- Empty values for termination dates
- No column for age, even though we had birthdates

So I wrote SQL queries to:
- Standardize and convert all date columns
- Set invalid or empty `termdate` values to `NULL`
- Calculate employee age using `birthdate`
- Create age groupings and tenure-based metrics

This part of the project focused on cleaning and structuring the data so it was usable for analysis and visualization.

---

## Key Questions I Answered

Here are some of the questions I used SQL to explore (and later visualized in Power BI):

1. What’s the gender distribution of employees?
2. How racially diverse is the workforce?
3. What does the age breakdown look like?
4. How many employees work remotely vs at HQ?
5. What’s the average length of employment for terminated employees?
6. How is gender distributed across departments?
7. What are the most common job titles?
8. Which departments have the highest attrition rate?
9. Where are employees located across the U.S.?
10. How has the company’s employee count changed over the years?
11. What is the average tenure by department?

These insights reflect the kinds of things HR teams might look at to make data-driven decisions.

---

## Power BI Dashboard

The dashboard I created includes the following visuals:

1. **Gender Distribution**  
2. **Race Distribution**  
3. **Headquarters vs Remote Split**  
4. **Hiring and Attrition Over Time**  
5. **Age Group Distribution and Gender Breakdown**  
6. **Employee Count by State**  
7. **Turnover Rate by Department**  
8. **Gender Split Across Departments**

The dashboard is interactive and designed to give HR managers a quick overview of workforce trends.

---

## How to Use This

1. Run each SQL query in MySQL to get the required outputs.
2. Export the results of each query to separate Excel files (or sheets).
3. Use those Excel files as data sources inside Power BI.
4. Build visuals and dashboards based on each exported dataset.
5. Open the .pbix file in Power BI Desktop to view or customize the dashboard.

---

## Why I Did This

This project was part of my effort to sharpen both my SQL and Power BI skills and build out real, portfolio-worthy examples of how I approach business problems with data. It’s also a great reminder that even with fictional datasets, you can tell real stories and answer questions that matter to stakeholders.

---

## Credits

I followed the core structure and inspiration from this video:  
[SQL & PowerBI Portfolio Project for Data Analysts](https://youtu.be/PzyZI9uLXvY)

---

## Note

The dataset is fictional. This project is meant for learning and showcasing data analysis skills. If you're a hiring manager or someone reviewing this,  thanks for reading this far!

