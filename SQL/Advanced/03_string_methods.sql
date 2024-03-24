-- Trim the data from both sides TRIM from left LTRIM from right RTRIM

Select employeeID , TRIM(employeeID) as TTRIM 
From Employeeinfo

Select employeeID , LTRIM(employeeID) as LTRIM 
From Employeeinfo

Select employeeID , RTRIM(employeeID) as RTRIM 
From Employeeinfo


-- Replace method to fix the error
-- ex LastName --> Shubham - Fired
Select LastName , REPLACE(LastName,'- Fired','') As New_LastName 
From EmployeeInfo 
Where LastName = 'Shubham%'
-- here we take column to change, what to change and to what


-- SUBSTRING
Select SUBSTRING(LastName,3,3) 
From EmployeeInfo 
-- here we pass column to do operation, with starting index btw starts from 1 and how many characters next
--  Here it will give us substring of 3rd character till 6th character i.e. 'bha'

Select err.FirstName, demo.FirstName
FROM err 
JOIN demo 
ON SUBSTRING(err.FirstName,1,3) = SUBSTRING(demo.FirstName,1,3)

-- UPPER and LOWER to change the case of string

Select  UPPER('shubham') AS UpperCase , LOWER('SHUBHAM') AS LowerCase  