CREATE TABLE EmployeeErrors (
EmployeeID varchar(50)
,FirstName varchar(50)
,LastName varchar(50)
)

Insert into EmployeeErrors Values 
('1001  ', 'Jimbo', 'Halbert')
,('  1002', 'Pamela', 'Beasely')
,('1005', 'TOby', 'Flenderson - Fired')


Select *
From EmployeeErrors

-- Using Trim, LTRIM, RTRIM

Select EmployeeID, TRIM(employeeID) AS IDTRIM
FROM EmployeeErrors 

Select EmployeeID, LTRIM(employeeID) AS IDTRIM
FROM EmployeeErrors 

Select EmployeeID, RTRIM(employeeID) AS IDTRIM
FROM EmployeeErrors 

--USING REPLACE 

Select LastName, REPLACE(LastName, '- Fired', '') as LastNameFixed
FROM EmployeeErrors 

--USING SUBSTRING

Select SUBSTRING(FirstName,1,3)
FROM EmployeeErrors 

Select err.FirstName , dem.FirstName
FROM EmployeeErrors err 
JOIN EmployeeDemographics dem 
	ON err.FirstName = dem.FirstName

	--FUZZY MATCHING SUBSTRING
Select SUBSTRING(err.FirstName,1,3) , SUBSTRING(dem.FirstName,1,3)
FROM EmployeeErrors err 
JOIN EmployeeDemographics dem 
	ON SUBSTRING(err.FirstName,1,3) = SUBSTRING(dem.FirstName,1,3)

--using UPPER and LOWER 
Select FirstName, LOWER(FirstName)
FROM EmployeeErrors 

Select FirstName, upper(FirstName)
FROM EmployeeErrors 