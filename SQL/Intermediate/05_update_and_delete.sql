-- UPDATE is used to set employeeID

SELECT employeeID from Employeeinfo

UPDATE Employeeinfo
SET employeeID = 10345 , Age = 22-- This will set all ids to this value so add condition
WHERE FirstName = 'Shubham'

-- Delete

Delete from Employeeinfo  -- Just run this to delete entire table
Where employeeID = 1001
-- Once deleted we cannpot get it back

-- Instead see first
Select * from Employeeinfo
Where employeeID = 1001