-- CREATE TABLES --


-- Employee
CREATE TABLE Employee(
  Employee_Id integer(6),
  First_Name VARCHAR(25),
  Last_Name VARCHAR(25),
  Hire_Date DATE,
  City VARCHAR(25),
  State VARCHAR(25),
  CONSTRAINT EMPLOYEE_PK PRIMARY KEY (Employee_Id));
 
 -- Department
  CREATE TABLE Department(
  Department_Id INTEGER,
  Department_Name VARCHAR(30),
  CONSTRAINT DEPARTMENT_PK PRIMARY KEY (Department_Id)
  );
  
  
  -- Salary
  CREATE TABLE Salary(
  Salary_Id INTEGER,
  Gross_Salary INTEGER,
  Hourly_Pay INTEGER,
  State_Tax INTEGER,
  Federal_Tax INTEGER,
  Account_Id INTEGER,
  CONSTRAINT SALARY_PK PRIMARY KEY (Salary_Id),
  FOREIGN KEY (Account_Id)
        REFERENCES ACCOUNTDETAILS(Account_Id)
  );
  

  
  -- DepartmentProject Bridge
  CREATE TABLE DepartmentProject(
  Department_Id INTEGER,
  Project_Id INTEGER,
  CONSTRAINT DEPTPROJECT_PK PRIMARY KEY (Department_Id,Project_Id),
  FOREIGN KEY (Department_Id)
        REFERENCES Department(Department_Id),
  FOREIGN KEY (Project_Id)
        REFERENCES Project(Project_Id)
  );
  
  -- Project
  CREATE TABLE Project(
  Project_Id INTEGER,
  Project_Name VARCHAR(50),
  Project_Description VARCHAR(50),
  CONSTRAINT Project_PK PRIMARY KEY (Project_Id)
  );
  
  
  -- AccountDetails
  CREATE TABLE AccountDetails(
  Account_Id INTEGER,
  Bank_Name VARCHAR(50),
  Account_Number VARCHAR(50),
  Employee_Id INTEGER,
  CONSTRAINT Account_PK PRIMARY KEY (Account_Id),
  FOREIGN KEY (Employee_Id)
        REFERENCES Employee(Employee_Id)
  );
 
  -- Education
  CREATE TABLE Education(
  Education_Id INTEGER,
  Employee_Id INTEGER,
  Degree VARCHAR(30),
  Graduation_Year INTEGER(4),
  CONSTRAINT Location_PK PRIMARY KEY (Education_Id),
  FOREIGN KEY (Employee_Id)
        REFERENCES Employee(Employee_Id)
  );
  
  -- Leave
  CREATE TABLE Leave_ (
  Leave_Id INTEGER,
  Employee_Id INTEGER,
  Leave_date DATE,
  CONSTRAINT Leave_PK PRIMARY KEY (Leave_Id),
  FOREIGN KEY (Employee_Id)
        REFERENCES Employee(Employee_Id)
  );
  
 
 -- EmployeeAttendance Bridge
  CREATE TABLE Employee_Attendance(
  Employee_Id INTEGER,
  Attendance_Id INTEGER,
  CONSTRAINT DEPARTMENTPROJECT_PK PRIMARY KEY (Employee_Id,Attendance_Id),
  FOREIGN KEY (Employee_Id)
        REFERENCES Employee(Employee_Id),
  FOREIGN KEY (Attendance_Id)
        REFERENCES Attendance(Attendance_Id)
  );
  
  -- Attendance
  CREATE TABLE Attendance(
  Attendance_Id INTEGER,
  Hours_Worked INTEGER,
  CONSTRAINT Attendance_PK PRIMARY KEY (Attendance_Id)
  );
  
  -- WorkLocation
  CREATE TABLE Work_Location(
  Location_Id INTEGER,
  Location VARCHAR(25),
  Number_Of_Employees INTEGER,
  City VARCHAR(25),
  State VARCHAR(25),
  CONSTRAINT Loc_PK PRIMARY KEY (Location_Id)
  );