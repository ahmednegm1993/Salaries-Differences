WITH dept_salaries AS (
    SELECT 
        e.salary, 
        d.department
    FROM 
       [dbo].[db_employee]  e
    JOIN 
        db_dept d ON e.department_id = d.id
    WHERE 
        d.department IN ('Marketing', 'Engineering')
)

, max_salaries AS (
    SELECT 
        department, 
        MAX(salary) AS max_salary
    FROM 
        dept_salaries
    GROUP BY 
        department
)

SELECT 
    ABS(
        (SELECT max_salary FROM max_salaries WHERE department = 'Marketing') - 
        (SELECT max_salary FROM max_salaries WHERE department = 'Engineering')
    ) AS salary_difference;
