--Set Operator
--Basic Assignment:
--Union

select empname from 
curemp union select empname from foremp ;

select dept from curemp union
select dept from foremp;


select customername from domcus union 
select cusname from intcus;

select city from domcus union 
select city from intcus;

select amount from onlord UNION
select amount from strord;

--Union All

select empname from 
curemp union all select empname from foremp ;

select dept from curemp union all
select dept from foremp;


select customername from domcus union all
select cusname from intcus;

select city from domcus union all
select city from intcus;

select amount from onlord UNION all
select amount from strord;
