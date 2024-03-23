-- union joins two tables with common columns 

SELECT * FROM Employeeinfo
union
SELECT * FROM EmployeeSalary

-- Return joint table removing duplicates and merging columns

-- union all returns duplicates too

SELECT * FROM Employeeinfo
union all
SELECT * FROM EmployeeSalary

-- union used to integrate the data 
-- Here it will put all data in right table selected columns and as data types of columns are same
-- 

SELECT employeeID, FirstName, Age FROM Employeeinfo
union all
SELECT employeeID,JobTitle,Salary FROM EmployeeSalary

-- employeeID  FirstName  Age
-- 1           Shubham     22
-- 2           Chaitanya   23
-- 2           Kunal       17
-- 3           Engineer    230000
-- 4           Pooja       29
-- 5           Doctor      130000


-- this shows if data type is same it will add any column in first table selected columns for union