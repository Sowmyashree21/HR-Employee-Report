DROP DATABASE human_resources;
CREATE DATABASE human_resources;
USE human_resources;

SELECT * 
FROM hr
LIMIT 10;

ALTER TABLE hr
CHANGE COLUMN ï»¿id emp_id VARCHAR(20) NULL;

-- Gives the data type and constraint of each variable
DESCRIBE hr;

-- Changing the date format for birthdate
SET sql_safe_updates=0;
UPDATE hr
SET birthdate = CASE
	WHEN birthdate LIKE '%/%' THEN date_format(str_to_date(birthdate,'%m/%d/%Y'),'%Y-%m-%d')
	WHEN birthdate LIKE '%-%' THEN date_format(str_to_date(birthdate,'%m-%d-%Y'),'%Y-%m-%d')
	ELSE null
END;

-- Changing the data type of birthdate
ALTER TABLE hr
MODIFY COLUMN birthdate DATE;

-- Changing the date format for hiredate
UPDATE hr
SET hire_date = CASE
	WHEN hire_date LIKE '%/%' THEN date_format(str_to_date(hire_date,'%m/%d/%Y'),'%Y-%m-%d')
	WHEN hire_date LIKE '%-%' THEN date_format(str_to_date(hire_date,'%m-%d-%Y'),'%Y-%m-%d')
	ELSE null
END;

-- Changing the datatype of hire_date to date
ALTER TABLE hr
MODIFY COLUMN hire_date DATE;

-- Changing the date format for termdate to null or the required format
UPDATE hr
SET termdate = NULL
WHERE termdate = '' OR termdate = '0000-00-00';

UPDATE hr
SET termdate = DATE(STR_TO_DATE(termdate, '%Y-%m-%d %H:%i:%s UTC'))
WHERE termdate IS NOT NULL AND termdate != '';

-- Changing the datatype of termdate to date
ALTER TABLE hr
MODIFY COLUMN termdate DATE;

-- Adding a new column for age
ALTER TABLE hr
ADD Column age INT;

-- Calculating the age by taking the difference between current date and birthdate
UPDATE hr
SET age = TIMESTAMPDIFF(YEAR, birthdate, CURDATE());

SELECT birthdate, age
FROM hr;

-- Getting the minimum and maximum age
SELECT 
	MIN(age) AS youngest,
    MAX(age) AS oldest
FROM hr;

-- Q1. Gender breakdown of employees in the company
SELECT gender, COUNT(gender)
FROM hr
WHERE age >=18 AND termdate IS NULL
GROUP BY gender;

-- Q2. Race/ethnicity breakdown of employees in the company
SELECT race, COUNT(race)
FROM hr
WHERE age >=18 AND termdate IS NULL
GROUP BY race
ORDER BY COUNT(race) DESC;

-- Q3. Age distribution of employees in the company
SELECT 
CASE 	
	WHEN age>=18 AND age<=24 THEN '18-24'
    WHEN age>=25 AND age<=34 THEN '25-34'
    WHEN age>=35 AND age<=44 THEN '35-44'
    WHEN age>=45 AND age<=54 THEN '45-44'
	WHEN age>=55 AND age<=64 THEN '55-64'
    ELSE '65+'
END AS age_group, gender,
COUNT(age) AS count
FROM hr
WHERE age>=18 AND termdate IS NULL
GROUP BY age_group, gender
ORDER BY age_group;

-- Q4. Workers at headquarters vs remote location
SELECT location, COUNT(*)
FROM hr
WHERE age>=18 AND termdate IS NULL
GROUP BY location;

-- Q5. Average length of employment for employees who have been terminated
SELECT ROUND(AVG(DATEDIFF(termdate, hire_date))/365,2) AS avg_length_employment
FROM hr
WHERE termdate <= curdate() AND termdate IS NOT NULL AND age >= 18;

-- Q6. Gender distribution across departments
SELECT gender, department, COUNT(gender)
FROM hr
WHERE age>=18 AND termdate IS NULL
GROUP BY gender, department
ORDER BY department;

-- Q7. Distribution of job titles across the company
SELECT jobtitle, COUNT(jobtitle)
FROM hr
WHERE age>=18 AND termdate IS NULL
GROUP BY jobtitle
ORDER BY jobtitle;

-- Q8. Department with highest turnover rate
WITH cte1 AS(
	SELECT department, COUNT(*) AS total_count,
    SUM(CASE WHEN termdate IS NOT NULL AND termdate <= curdate() THEN 1
			ELSE 0
        END) AS terminated_count
	
    FROM hr
    WHERE age>=18
    GROUP BY department
)
SELECT *, terminated_count/total_count AS turnover_rate
FROM cte1
ORDER BY turnover_rate DESC;

-- Q9. Distribution of employees across locations by city and state
SELECT location_state, COUNT(*) AS count
FROM hr
WHERE age>=18 AND termdate IS NULL
GROUP BY location_state
ORDER BY count DESC;

-- Q10. How has the company's employee count changed over time based on hire and term dates
-- USING CTEs
WITH cte1 AS(
	SELECT YEAR(hire_date) AS Year, COUNT(*) as hires,
    SUM(CASE
			WHEN termdate IS NOT NULL AND termdate<=curdate() THEN 1
            ELSE 0
		END) AS termination
	FROM hr
    WHERE age>=18
	GROUP BY YEAR(hire_date)
)
SELECT *, hires-termination as net_change, ROUND((hires - termination)/hires*100,2) AS net_change_percent
FROM cte1
ORDER BY Year DESC;

-- Using subquery
SELECT year, hires, terminations, hires-terminations AS net_change,
ROUND((hires - terminations)/hires*100,2) AS net_change_percent
FROM(
	SELECT Year(hire_date) AS year,COUNT(*) as hires,
    SUM(CASE
			WHEN termdate IS NOT NULL AND termdate<=curdate() THEN 1
            ELSE 0
		END) AS terminations
	FROM hr
    WHERE age>=18
	GROUP BY YEAR(hire_date)
) AS subquery
ORDER BY Year DESC;

-- Q11. Tenure distribution for each department
SELECT department, ROUND(AVG(DATEDIFF(termdate, hire_date)/365),0) AS avg_tenure
FROM hr
WHERE termdate <=curdate() AND termdate IS NOT NULL AND age>=18
GROUP BY department;
