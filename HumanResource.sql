/*USING SELECT STATMENT TO QUERY EMPLOYEE DATABASE*/

SELECT * FROM Employees

/*SELECTING EMPLOYEE IN A SPECIFIC COLUMN WHO EARN HIGH SALARY*/

SELECT 
	Employee_id,First_name, Last_name, salary, Email, Hire_date
FROM 
	Employees
WHERE 
	Salary > 50000
ORDER BY 
		First_name,
		Last_name DESC;

/*DOUBLED SALARY FOR EMPLOYERS WHOSE SALARY GREATER THAN 17,000 */
UPDATE Employees
SET
	Salary = Salary * 2
WHERE 
	Salary > 17000
	SELECT * FROM Employees

/*PERFORMING SQL COMPARISON OPERATION (GREATER THEN, LESS THAN, GREATER THAN OR EQUAL TO, etc)*/

SELECT 
	Employee_id,
	first_name,
	last_name,
	Department_id
FROM
	Employees
WHERE 
	Department_id <> 8 
		AND Department_id <= 8 
ORDER BY first_name, last_name; --NOTE: You can order by any criteria you want from the selected column in the database table.

--Another comparison operator for employees whose Department_id AND Salary is greater than or eqaul to 8 and 50k respectively
SELECT 
	Employee_id,
	first_name,
	last_name,
	Department_id,
	Salary
FROM
	Employees
WHERE 
	Department_id >= 8 
		AND Salary >= 50000
ORDER BY Salary DESC

/*PERFORMING AND, OR, IN OPERATION ON EMPLOYEE DATABASE*/

SELECT 
	Employee_id, 
	first_name,
	last_name,
	Department_id, Hire_date,
	Salary
FROM 
	Employees
WHERE Department_id >= 3
	AND YEAR (Hire_date) IN ( 1990, 1991, 1993, 1995, 1998)

ORDER BY 
		Hire_date,
		Salary DESC

/*HERE WE USED SQL 'IN' OPERATOR WITH A SUBQUERY*/

/*SELECT 
	Department_id
FROM
	Departments
WHERE 
	Department_name = 'Finance'
		OR Department_name = 'Accounting'
SELECT 
	Employee_id, 
	first_name,
	last_name,
	Department_id
FROM
	Employees
WHERE 
	Department_id IN (2,4,6);
*/

SELECT 
	Employee_id, first_name, last_name, Department_id, salary
FROM
	Employees
WHERE 
	Department_id IN (SELECT
			Department_id
				FROM
					Departments
						WHERE 
							Department_name = 'Finance'
							OR Department_name = 'Accounting')