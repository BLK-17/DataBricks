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

--*EXCEPT*
select empname from CUREMP
minus 
select empname from foremp ;

select empname from FOREMP
minus 
select empname from curemp;

select customername from domcus
minus 
select cusname from intcus;

select orderid from onlord
minus 
select orderid from strord;

select dept from CUREMP
MINUS
select dept from foremp;

--*INTERSECT*
select empname from CUREMP
INTERSECT
select empname from foremp;

select dept from CUREMP
INTERSECT
select dept from foremp;

select customername from DOMCUS
INTERSECT 
select cusname from intcus;

select city from domcus
INTERSECT
select city from intcus;

select orderid from ONLORD
INTERSECT
select ORDERID from strord;

