-- Temporary table used to store it data in temporary table.
-- Name starts with #

-- It will show error if you run it second time as temp_emo is already created so write following command
DROP TABLE IF EXISTS #temp_emp
CREATE TABLE #temp_emp(
    Emp_ID int,
    FirstName var(50),
    Salary int,
)

Insert into #temp_emp values(1, 'John', 78963);

-- Or we can copy entire table into it
Insert into #temp_emp
select * from Employeeinfo


CREATE TABLE #job_title_statistics(
    JobTitle var(50),
    Avg_Age int,
    Avg_Salary int,
)

Insert into #job_title_statistics 
Select JobTitle, Avg(Age), Avg(Salary) 
FROM EmployeeSalary
JOIN Employeeinfo
ON EmployeeSalary.employeeID = Employeeinfo.employeeID
Group by JobTitle

-- creates new table with following fields by performing the following operations