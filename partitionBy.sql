SELECT FirstName, LastName, Gender, Salary , COUNT(Gender) OVER (PARTITION BY Gender) as TotalGender FROM EmployeeDemographics
JOIN
EmployeeSalary ON EmployeeDemographics.EmployeeId = EmployeeSalary.EmployeeId