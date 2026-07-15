--COMPARISON OPERATORS
select * from EMPLOYEES
where salary >= 80000;

select * from EMPLOYEES
where EXPERIENCE<=3;

select * from EMPLOYEES
where salary <> 45000;

select * from EMPLOYEES 
where salary < 50000;

select * from EMPLOYEES
where EXPERIENCE>5;

--LOGICAL OPERATORS

select * from EMPLOYEES
where DEPARTMENT = 'IT' AND salary > 70000;

select * from EMPLOYEES
where city = 'Hyderabad' OR city = 'Bangalore';

select * from EMPLOYEES
where department = 'HR' and experience <3;

select * from EMPLOYEES
where salary = 60000 OR experience > 6;

select * from EMPLOYEES
where department != 'Sales';

--IN AND NOT IN
select * from EMPLOYEES
where City IN ('Hyderabad','Mumbai');

select * from EMPLOYEES
where DEPARTMENT IN ('IT','Finance');

select * from EMPLOYEES
where City NOT IN ('Chennai','Pune');

select * from EMPLOYEES
where SALARY IN (45000,75000,91000);

select * from EMPLOYEES
where DEPARTMENT NOT IN ('HR','Sales');

--BETWEEN
Select * from EMPLOYEES
where salary between 50000 and 80000;

Select * from EMPLOYEES
where EXPERIENCE between 3 and 6;

Select * from EMPLOYEES
where emp_id between 105 and 112;

Select * from EMPLOYEES
where salary not between 40000 and 60000;

Select * from EMPLOYEES
where EXPERIENCE between 2 and 4;

--LIKE
select * from EMPLOYEES
where emp_name LIKE 'R%';

select * from EMPLOYEES
where emp_name LIKE '%a';

select * from EMPLOYEES
where emp_name LIKE '%v%';

select * from EMPLOYEES
where city like 'B%';

select * from EMPLOYEES
where department like  '%s';
