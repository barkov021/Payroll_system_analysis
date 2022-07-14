-- Number of Employees with different degrees

create  view Education_View
	 AS
	 SELECT Degree, count(Degree) 
	 FROM Education 
	 GROUP BY Degree;
     
     -- Finding the number of employees in each state
     CREATE view number_of_employess_in_each_state AS 
     SELECT COUNT(*), state 
     FROM employee 
     GROUP BY state 
     ORDER BY 1;
     
	-- Finding the employee with the highest gross salary
     CREATE view top_gross_slary AS 
     SELECT CONCAT(employee.first_name, " ", employee.last_name) AS name, salary.gross_salary
     FROM salary 
     JOIN AccountDetails 
     ON AccountDetails.Account_Id = salary.Account_Id
     JOIN employee 
     ON AccountDetails.Employee_Id = employee.Employee_Id
     ORDER BY gross_salary DESC 
     LIMIT 1;
     
     
     -- Checking how many hours a person with the highest gross salary worked 
     
     SELECT CONCAT(first_name, " ", last_name), attendance.Hours_Worked
     FROM employee 
     JOIN Employee_Attendance
     ON Employee_Attendance.Employee_Id = employee.employee_id 
     JOIN Attendance
     ON Attendance.Attendance_Id = Employee_Attendance.Attendance_Id
     WHERE CONCAT(first_name, " ", last_name) LIKE "Chetan Mistry" ;
  -- Chetan Mistry worked 40 hours 
  
  
	-- Finding what department works on which project 
    CREATE view department_project AS
    SELECT Department.Department_Name, Project.Project_Name, Project.Project_Description 
    FROM project 
    JOIN DepartmentProject 
    ON project.Project_id = DepartmentProject.Project_Id
    JOIN department 
    ON department.Department_Id = DepartmentProject.Department_Id; 
    
    
    -- Finding the average hourly pay per department 
     CREATE view department_hourly_pay AS
     SELECT Department.department_name, AVG(salary.hourly_pay) AS 'average hourly pay'
     FROM department 
     JOIN Employee
     ON Employee.Department_id = Department.Department_Id
     JOIN AccountDetails
     ON AccountDetails.Employee_Id = Employee.Employee_Id
     JOIN salary 
     ON AccountDetails.Account_Id = Salary.Account_Id
     GROUP BY Department.Department_Id
     ORDER BY 2 DESC; 
    
