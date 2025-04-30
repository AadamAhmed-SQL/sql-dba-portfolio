-- List all employees with department names
SELECT e.FirstName, e.LastName, d.DepartmentName
FROM Employees e
JOIN Departments d ON e.DepartmentID = d.DepartmentID;

-- Find the highest salary
SELECT TOP 1 e.FirstName, e.LastName, s.SalaryAmount
FROM Employees e
JOIN Salaries s ON e.EmployeeID = s.EmployeeID
ORDER BY s.SalaryAmount DESC;

-- Count of employees per department
SELECT d.DepartmentName, COUNT(*) AS NumEmployees
FROM Employees e
JOIN Departments d ON e.DepartmentID = d.DepartmentID
GROUP BY d.DepartmentName;