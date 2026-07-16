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

select p.projectname,e.employeename from 
emppro ep right join projects p 
on ep.projectid = p.PROJECTID
right join emp e 
on ep.employeeid = e.employeeid;

--FULL JOIN
