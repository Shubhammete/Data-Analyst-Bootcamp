-- Stored procedure is procedure which can stored in stored procedures and whenever modified it gets modified to next use also

CREATE procedure test
AS 
Select * from EmployeeInfo

EXEC test


CREATE Procedure demo AS
Create table #demotable(
    FirstName varchar(50),
    Jobtitle varchar(50),
    Salary int
)

Insert into #demotable 
select * from EmployeeSalary
JOIN Employeeinfo
on EmployeeInfo.employeeID = EmployeeSalary.employeeID
-- where  EmployeeInfo.JobTitle= @Jobtitle  -- var in procedure file

Select * from #demotable
-- parameters in Procedure
-- in stored procedure test modify it 
-- at alter table add variable for ex @jobtitle nvarchar(100)
-- and at insert add condition where Jobtitle = @jobtitle
EXEC demo @Jobtitle = 'Salesman'  -- returns only salesman data