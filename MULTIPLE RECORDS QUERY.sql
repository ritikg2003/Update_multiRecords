UPDATE employees
SET salary = 70000, department = 'IT', position = 'Senior Developer'
WHERE employee_id = 201;


UPDATE employees
SET 
    salary = CASE 
        WHEN employee_id = 201 THEN 70000
        WHEN employee_id = 202 THEN 65000
        ELSE salary
    END,
    department = CASE 
        WHEN employee_id = 201 THEN 'IT'
        WHEN employee_id = 202 THEN 'Finance'
        ELSE department
    END
WHERE employee_id IN (201, 202);



UPDATE employees e
SET 
    e.salary = s.new_salary,
    e.department = s.new_department
FROM salary_updates s
WHERE e.employee_id = s.employee_id;


