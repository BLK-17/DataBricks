--*Basic Assignments*
--Inner Join
select e.employeename, d.departmentname from 
emp  e 
inner join
departments  d
on e.departmentid = d.departmentid;


select p.projectname, d.departmentname from 
PROJECTS p inner join departments d
on p.DEPARTMENTID = d.DEPARTMENTID;

select e.EMPLOYEENAME,p.PROJECTNAME from 
emp e inner join EMPPRO ep
on e.EMPLOYEEID = ep.EMPLOYEEID
inner join PROJECTS p
on p.PROJECTID = ep.PROJECTID;

select e.salary,d.location from
emp e inner join departments d
on e.departmentid = d.departmentid;

select e.EMPLOYEENAME from 
emp e inner join EMPPRO ep
on e.EMPLOYEEID = ep.EMPLOYEEID;

--Left Join
select e.EMPLOYEENAME, d.departmentname from
emp e left join DEPARTMENTS d
on e.DEPARTMENTID = d.DEPARTMENTID;

select d.departmentname, e.employeename from
departments d left join EMP e
on d.departmentid = e.DEPARTMENTID;

select p.projectname,d.departmentname from
PROJECTS p left join DEPARTMENTS d
on p.DEPARTMENTID = d.DEPARTMENTID;

select e.employeename, p.projectname from
emp e left join emppro ep
on e.EMPLOYEEID = ep.EMPLOYEEID
left join PROJECTS p 
on ep.PROJECTID = p.projectid;

select e.employeename from
emp e left join emppro ep
on e.EMPLOYEEID = ep.EMPLOYEEID;

--Right Join
select  e.employeename,d.departmentname from
 emp e right join departments d
on e.DEPARTMENTID = d.DEPARTMENTID;

select e.employeename,p.projectname FROM
emp e right join emppro ep 
on e.employeeid = ep.EMPLOYEEID
right join projects p
on ep.PROJECTID = p.PROJECTID;

select e.employeename, d.departmentname from
emp e right join DEPARTMENTS d
on e.DEPARTMENTID = d.DEPARTMENTID; 

select p.projectname, d.departmentname from
projects p right join DEPARTMENTS d
on p.DEPARTMENTID = d.DEPARTMENTID; 

--FULL JOIN
select e.employeename, d.departmentname from
emp e full OUTER join departments d 
on e.DEPARTMENTID=d.DEPARTMENTID;

select d.departmentname, p.projectname from
departments d full outer join  projects p
on d.DEPARTMENTID = p.DEPARTMENTID;

select e.employeename, p.projectname from 
emp e full outer join emppro ep
on e.EMPLOYEEID = ep.EMPLOYEEID
full outer join projects p
on ep.projectid=p.PROJECTID;

select e.employeename, d.departmentname from 
emp e full outer join DEPARTMENTS d
on e.DEPARTMENTID = d.DEPARTMENTID;

select d.departmentname, p.projectname from
departments d full outer join  projects p
on d.DEPARTMENTID = p.DEPARTMENTID;


--*INTERMEDIATE ASSIGNMENTS*
--INNER JOIN
select * from departments;
select * from emp;
select * from projects;

select e.employeename from
emp e inner join departments d
on e.DEPARTMENTID =  d.departmentid
where d.DEPARTMENTNAME = 'IT';

select e.EMPLOYEENAME,p.PROJECTNAME from 
emp e inner join EMPPRO ep
on e.EMPLOYEEID = ep.EMPLOYEEID
inner join PROJECTS p
on p.PROJECTID = ep.PROJECTID
where p.budget>200000;

select e.employeename,d.departmentname,p.projectname from
emp e inner join departments d
on e.DEPARTMENTID = d.DEPARTMENTID
inner join emppro ep on e.employeeid = ep.EMPLOYEEID
inner join projects p 
on ep.projectid = p.projectid;

select d.departmentname, COUNT(e.employeeid) as ttlemp FROM
departments d inner join emp e
on d.departmentid = e.DEPARTMENTID
group by d.departmentname;

select d.departmentname, AVG(e.salary) as AvgSal from
DEPARTMENTS d inner join emp e
on d.DEPARTMENTID = e.DEPARTMENTID
group by d.departmentname;

--*LEFT JOIN*
select e.employeename from 
emp e left join DEPARTMENTS d
on e.departmentid = d.DEPARTMENTID
where d.departmentid is null;

select e.employeename from 
emp e left join emppro ep
on e.employeeid = ep.EMPLOYEEID
where ep.projectid is null;

select d.departmentname from 
departments d left join emp e
on d.departmentid = e.DEPARTMENTID
where e.employeeid is null; 

select p.projectname from 
PROJECTS p left join departments d
on p.departmentid = d.DEPARTMENTID
where d.departmentid is null;

select d.departmentname, COUNT(e.employeeid) as TtlEMP 
from departments d left join emp e
on d.departmentid = e.departmentid
group by(d.departmentname);
