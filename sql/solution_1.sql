


DECLARE @marketing_dept_id INT, @engineering_dept_id INT;

SELECT 
    @marketing_dept_id = id 
FROM 
    db_dept 
WHERE 
    department = 'Marketing';

SELECT 
    @engineering_dept_id = id 
FROM 
    db_dept 
WHERE 
    department = 'Engineering';

DECLARE @marketing_max_salary INT, @engineering_max_salary INT;

SELECT 
    @marketing_max_salary = MAX(salary) 
FROM 
     [dbo].[db_employee]
WHERE 
    department_id = @marketing_dept_id;

SELECT 
    @engineering_max_salary = MAX(salary) 
FROM 
    [dbo].[db_employee]
WHERE 
    department_id = @engineering_dept_id;

SELECT 
    ABS(@marketing_max_salary - @engineering_max_salary) AS salary_difference;
