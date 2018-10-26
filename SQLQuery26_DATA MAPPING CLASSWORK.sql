use EXERCISE1;
SELECT * FROM EMPLOYEE;

SELECT * INTO Emp_Src.DBO.Employee FROM EXERCISE1.DBO.EMPLOYEE;

SELECT * INTO Map1_emp_TGT.DBO.T_EmployeeDetails FROM EXERCISE1.DBO.EMPLOYEE;


SELECT * from Emp_Src.DBO.Employee;

SELECT * from  Map1_emp_TGT.DBO.T_EmployeeDetails;

-------------------------------------------------------------------------

--SOURCE MINUS/EXCEPT TARGET
SELECT * from Emp_Src.DBO.Employee
EXCEPT
SELECT * from  Map1_emp_TGT.DBO.T_EmployeeDetails;


--AND-- TARGET MINUS/EXCEPT SOURCE
SELECT * from  Map1_emp_TGT.DBO.T_EmployeeDetails
EXCEPT
SELECT * from Emp_Src.DBO.Employee;

-----------------------------------------------------------------------------

SELECT * FROM Map2_Emp_TGT.DBO.Map2_T_EmployeeDetails;

SELECT * from Emp_Src.DBO.Employee;

SELECT EMPLOYEENO, EMPNAME
, CASE GENDER 
WHEN 'M' THEN 'Male'
WHEN 'F' THEN 'Female'
END GENDER
, BIRTHPLACE, DOB,
UPPER(SUBSTRING(CURRENTLOCATION, 1, 3)) AS CURRENTLOCATION, DESIGNATION, 
DATEOFJOINING, SALARY, DEPTNO, DEPTNAME,
CASE 
WHEN DATEOFLEAVING IS NULL THEN 1
ELSE 0
END AS ACTIVE,
 TOTALEXPERIENCE, MANAGERID, ADDRESS,
BONUS
FROM Emp_Src.DBO.Employee
EXCEPT
SELECT * FROM Map2_Emp_TGT.DBO.Map2_T_EmployeeDetails;


SELECT EMPLOYEENO, EMPNAME
, CASE GENDER 
WHEN 'M' THEN 'Male'
WHEN 'F' THEN 'Female'
END GENDER
, BIRTHPLACE, DOB,
UPPER(SUBSTRING(CURRENTLOCATION, 1, 3)) AS CURRENTLOCATION, DESIGNATION, 
DATEOFJOINING, SALARY, DEPTNO, DEPTNAME,
CASE 
WHEN DATEOFLEAVING IS NULL THEN 1
ELSE 0
END AS ACTIVE,
 TOTALEXPERIENCE, MANAGERID, ADDRESS,
BONUS
FROM Emp_Src.DBO.Employee
WHERE EMPLOYEENO = 1;


SELECT *
FROM Map2_Emp_TGT.DBO.Map2_T_EmployeeDetails
WHERE EMPLOYEENO = 1;






