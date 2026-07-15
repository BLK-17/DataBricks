--SELECT
select * from EMPLOYEES;

select emp_name,salary from EMPLOYEES;

select emp_name,department from EMPLOYEES;

select * from EMPLOYEES where department = 'IT';

select emp_name,EXPERIENCE from EMPLOYEES;

--WHERE
select * from EMPLOYEES where salary>70000;

select * from EMPLOYEES where city='Hyderabad';

select * from EMPLOYEES where EXPERIENCE<4;

select * from EMPLOYEES where department = 'Finance';

select * from EMPLOYEES where salary=52000;

--Group BY
select DEPARTMENT,sum(salary) as TtlSal
from EMPLOYEES
group by DEPARTMENT;

select DEPARTMENT,avg(salary) as AvgSal
from EMPLOYEES
group by DEPARTMENT;

select city,count(emp_id) as EmpCnt
from EMPLOYEES
group by city;


select DEPARTMENT,max(salary) as MaxSal
from EMPLOYEES
group by DEPARTMENT;


select DEPARTMENT,min(EXPERIENCE) as MinExp
from EMPLOYEES
group by DEPARTMENT;

--Having
select DEPARTMENT,COUNT(*) as TTl
from EMPLOYEES
group by DEPARTMENT
having COUNT(*)>3;

select DEPARTMENT,AVG(salary) as AvgSal
from EMPLOYEES
group by DEPARTMENT
having AVG(salary)>60000;

select city,COUNT(*) as TTL
from EMPLOYEES
group by CITY
having COUNT(*)>2;

select DEPARTMENT,SUM(salary) as SumSal
from EMPLOYEES
group by DEPARTMENT
having SUM(salary)>200000;

select DEPARTMENT,MAX(salary) as MaxSal
from EMPLOYEES
group by DEPARTMENT
having MAX(salary)>90000;

--TOP
Select * FROM EMPLOYEES
ORDER BY salary DESC
fetch first 5 rows only;

Select * FROM EMPLOYEES
ORDER BY EXPERIENCE DESC
fetch first 3 rows only;

Select * FROM EMPLOYEES
where DEPARTMENT = 'Finance'
ORDER BY salary DESC
fetch first 2 rows only;

Select * FROM EMPLOYEES
where City = 'Hyderabad'
ORDER BY salary DESC
fetch first 4 rows only;

Select * FROM EMPLOYEES
ORDER BY salary DESC
fetch first 1 rows only;

--Distinct
Select DISTINCT department from EMPLOYEES;

SELECT distinct city from employees;

select distinct salary from employees;

select distinct department, city from employees;

select distinct experience from employees;






