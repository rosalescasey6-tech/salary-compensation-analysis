
-- 1. View a sample of the dataset
SELECT *
FROM salary_compensation
LIMIT 10;

-- 2. Find the highest salaries
SELECT *
FROM salary_compensation
ORDER BY Base_Salary_USD DESC
LIMIT 10;

-- 3. Calculate average salary by department
SELECT
    Department,
    ROUND(AVG(Base_Salary_USD), 2) AS Average_Salary
FROM salary_compensation
GROUP BY Department
ORDER BY Average_Salary DESC;

-- 4. Count employees by department
SELECT
    Department,
    COUNT(*) AS Employee_Count
FROM salary_compensation
GROUP BY Department
ORDER BY Employee_Count DESC;

-- 5. Calculate average bonus by department
SELECT
    Department,
    ROUND(AVG(Bonus_Amount_USD), 2) AS Average_Bonus
FROM salary_compensation
GROUP BY Department
ORDER BY Average_Bonus DESC;

-- 6. Join employee salaries with department managers
SELECT
    s.Employee_ID,
    s.Department,
    s.Base_Salary_USD,
    d.Department_Manager
FROM salary_compensation AS s
JOIN department_info AS d
    ON s.Department = d.Department;
