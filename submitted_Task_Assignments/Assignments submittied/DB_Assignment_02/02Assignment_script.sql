
---------------------------------------------------------------------------------------------------------------
create table customer(
	id int Not Null primary key,
	firstName varchar(30) Not null,
	lastName varchar(30) not Null,
	city varchar(20) not Null,
	country varchar(30) not Null,
	phone varchar(30) not Null
	);

create table orders(
	id int not null primary key,
	orderdate varchar(30) not null,
	orderNumber varchar(30) not Null,
	customerid int not Null ,
	totalammount int  not Null,
	foreign key(customerid) references customer(id) 
);

insert into customer values(1 , "Muhammad " , "iftikhar","jhelum","pakistan","03461551394");
insert into customer values(2 , "Muhammad " , "zain","islamabad","India","03461553394");
insert into customer values(3 , "Muhammad " , "ali","karach","America","03461559394");
insert into customer values(4 , "Muhammad " , "asad","Multan","Dubia","03461551394");
insert into customer values(5 , "Muhammad " , "arslan","karach","Austerila","03461651394");
insert into customer values(6 , "Muhammad " , "Nimra","Multan","pakistan","03471555394");
insert into customer values(7 , "Muhammad " , "aimen","karach","Austerila","03461545394");
insert into customer values(8 , "Muhammad " , "zeenat","jhelum","pakistan","03861554394");
insert into customer values(9 , "Muhammad " , "Momina","Multan","Austerila","03461551394");
insert into customer values(10, "Muhammad " , "sana","karach","America","039614554394");
insert into customer values(11, "Muhammad " , "suleman","Multan","Austerila","03461551394");
insert into customer values(12, "Muhammad " , "mehboob","karach","pakistan","03461557494");
insert into customer values(13, "Muhammad " , "Asjid","jhelum","Austerila","03561991394");
insert into customer values(14, "Muhammad " , "Raza","Multan","pakistan","03461555494");
insert into customer values(15, "Muhammad " , "Abdullah","karach","pakistan","03461551394");
insert into customer values(16, "Muhammad " , "Hammad","karach","Austerila","03461596454");
insert into customer values(17, "Muhammad " , "Danish","jhelum","America","0306000000");
insert into customer values(18, "Muhammad " , "Hania Amir","karach","pakistan","03461551394");
insert into customer values(19 , "Muhammad " , "Mehwish","Multan","Austerila","03001051394");
insert into customer values(20, "Muhammad " , "Nouman","karach","America","03001551394");

insert into orders values(1,"2017-12-12",10,1,1000);
insert into orders values(2,"2018-12-12",20,2,2000);
insert into orders values(3,"2019-12-12",30,3,3000);
insert into orders values(4,"2020-12-12",40,4,4000);
insert into orders values(5,"2021-12-12",50,5,1500);
insert into orders values(6,"2023-12-12",60,6,1800);
insert into orders values(7,"2014-12-12",70,7,600);
insert into orders values(8,"2065-12-12",18,8,200);
insert into orders values(9,"2030-12-12",19,9,2000);


--------------------------------------------------------------------------------------------------





------------------------------------------------------------------------

create table employee(
	emp_id int not null primary key,
	first_name varchar(20) not Null,
	last_name varchar(20) not null,
	email varchar(20) not Null,
	hire_date varchar(30) not Null,
	job_id varchar(30) not Null,
	salary int  not  Null,
	manager_id varchar(30) not Null,
	dept_id varchar(30) not Null

	)
insert into employee VALUES(100	,"Steven"	,"King"		,"SKING"		,"1987-6-17"	,"AD_PRES"	,24000	,0   ,90);
insert into employee VALUES(101	,"Neena"	,"Kochhar"	,"NKOCHHAR"	,"1987-6-18"	,"AD_VP"		,17000	,100 ,90);
insert into employee VALUES(102	,"Lex" 	,"De Haan"	,"LDEHAAN"	,"1987-6-19"	,"AD_VP"		,17000	,100 ,90);
insert into employee VALUES(103	,"Alexander","Hunold"		,"AHUNOLD","1987-6-20"	,"IT_PROG"	,9000	,102 ,60);
insert into employee VALUES(104	,"Bruce"	,"Ernst"	,"BERNST"		,"1987-6-21"	,"IT_PROG"	,6000	,103 ,60);
insert into employee VALUES(105	,"David"	,"Austin"	,"DAUSTIN"	,"1987-6-22"	,"IT_PROG"	,4800	,103 ,60);
insert into employee VALUES(106	,"Valli"	,"Pataballa"	,"VPATABAL"	,"1987-6-23"	,"IT_PROG"	,4800	,103 ,60);
insert into employee VALUES(107	,"Diana"	,"Lorentz"	,"DLORENTZ"	,"1987-6-24"	,"IT_PROG"	,4200	,103 ,60);
insert into employee VALUES(108	,"Nancy"	,"Greenberg"	,"NGREENBE"	,"1987-6-25"	,"FI_MGR"		,12000	,101 ,100);
insert into employee VALUES(109	,"Daniel"	,"Favietf"	,"DFAVIET"	,"1987-6-26"	,"FI_ACCOUNT"	,9000	,108 ,100);
insert into employee VALUES(110	,"John"	,"Chen"		,"JCHEN"		,"1987-6-27"	,"FI_ACCOUNT"	,8200	,108 ,100);
insert into employee VALUES(111	,"Ismael"	,"Sciarra"	,"ISCIARRA"	,"1987-6-28"	,"FI_ACCOUNT"	,7700	,108 ,100);
insert into employee VALUES(112	,"Jose Manue","Urman"	,"JMURMAN","1987-6-29"	,"FI_ACCOUNT"	,7800	,108 ,100);
insert into employee VALUES(113	,"Luis"	,"Popp"		,"LPOPP"		,"1987-6-30"	,"FI_ACCOUNT"	,6900	,108 ,100);
insert into employee VALUES(114	,"Den"	,"Raphaely"	,"DRAPHEAL"	,"1987-7-1"	,"PU_MAN"		,11000	,100 ,30);
insert into employee VALUES(115	,"Alexander","Khoo"		,"AKHOO"		,"1987-7-2"	,"PU_CLERK"	,3100	,114 ,30);
insert into employee VALUES(116	,"Shelli"	,"Baida"		,"SBAIDA"		,"1987-7-3"	,"PU_CLERK"	,2900	,114 ,30);
insert into employee VALUES(117	,"Sigal"	,"Tobias"		,"STOBIAS"	,"1987-7-4"	,"PU_CLERK"	,2800	,114 ,30);
insert into employee VALUES(118	,"Guy"	,"Himuro"		,"GHIMURO"	,"1987-7-5"	,"PU_CLERK"	,2600	,114 ,30);
insert into employee VALUES(119	,"Karen"	,"Colmenares"	,"KCOLMENA"	,"1987-7-6"	,"PU_CLERK"	,2500	,114 ,30);
insert into employee VALUES(120	,"Matthew" ,"Weiss"		,"MWEISS"	,"1987-7-7"	,"ST_MAN	",8000	,100 ,50);
insert into employee VALUES(121	,"Adam"	,"Fripp"		,"AFRIPP"		,"1987-7-8"	,"ST_MAN"		,8200	,100 ,50);
insert into employee VALUES(122	,"Payam"	,"Kaufling"	,"PKAUFLIN"	,"1987-7-9"	,"ST_MAN	"	,7900	,100 ,50);
insert into employee VALUES(123	,"Shanta"	,"Vollman"	,"SVOLLMAN"	,"1987-7-10"	,"ST_MAN"		,6500	,100 ,50);

------------------------------------------------------------
----------------------------------------------------

4:

4. List the manager under whom the most number of employees a

select count(emp_id) employees ,manager_id
	from employee 
	group by manager_id 
	having employees = 
	(Select max(emp) from (select count(emp_id) emp , manager_id 
	from employee group by 
	manager_id) as data)



5. List the average salaries paid to each designation in each department.

select avg(salary) salary , job_id as designation ,dept_id as department
from employee
group by dept_id , job_id

6. List the number of employees working under each manager in ascending order.

select count(emp_id) employees ,manager_id Manager
from employee
group by manager_id 
order by manager_id


7. List the number of managers in each department.

select count(manager_id) Manager ,dept_id department
from employee 
group by dept_id


8. List the departments that has more than 3 employees

select count(emp_id) employer , dept_id department
from employee
group by dept_id
having employer >3

9. List the department that has the most number of employees.
select count(emp_id) employees ,dept_id
	from employee 
	group by dept_id
	having employees = 
	(Select max(emp) from (select count(emp_id) emp , dept_id 
	from employee group by 
	dept_id) as data)


10. List the department that the least number of employees

select count(emp_id) employees ,dept_id
	from employee 
	group by dept_id
	having employees = 
	(Select min(emp) from (select count(emp_id) emp , dept_id 
	from employee group by 
	dept_id) as data)


