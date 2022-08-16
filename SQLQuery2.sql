WITH CTE_Employee as	
(SELECT FirstName, LastName, Gender, Salary
, COUNT(Gender) OVER (PARTITION BY Gender) as TotalGender 
FROM EmployeeDemographics
JOIN EmployeeSalary ON EmployeeDemographics.EmployeeId = EmployeeSalary.EmployeeId
WHERE Salary > '45000'
)


SELECT FirstName, Salary FROM CTE_Employee