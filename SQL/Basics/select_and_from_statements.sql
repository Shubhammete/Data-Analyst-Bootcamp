--* is for all

-- select all columns
SELECT * FROM Employeeinfo

-- employeeID	FirstName	LastName	Age	Gender
-- 1001	John	Doe	48	Male
-- 1002	Kat	Pax	18	Female
-- 1003	Perry	Flat	20	Female
-- 1004	Shai	Sane	30	Male
-- 1005	Albert	Watson	28	Male
-- 1006	Ricky	Hales	36	Male

-- custom columns
SELECT FirstName, LastName FROM Employeeinfo

-- TOP -> selects top rows according to 
SELECT TOP 5 FirstName FROM Employeeinfo

-- DISTINCT -> selects only distinct values present in column
SELECT DISTINCT(Gender) FROM Employeeinfo
-- Gender
-- male
-- female

-- COUNT  -> returns count of all non-NULL values in column
SELECT COUNT(LastName)
-- no column name
-- 6
-- here column name is not there as it is based on lastname

-- AS -> to gave name of column as
SELECT COUNT(LastName) AS LastNameCount
-- LastNameCount
-- 6

-- MAX --> returns highest value
SELECT MAX(Salary) FROM EmployeeSalary

-- MIN --> returns minimum value
SELECT MIN(Salary) FROM EmployeeSalary

-- AVG --> returns Average value
SELECT AVG(Salary) FROM EmployeeSalary