INSERT into employees(emp_no,birth_date,first_name,last_name,gender,hire_Date)
  VALUE(1,'2002-12-04',"Muhammad","zain","M",'2014-02-02')

INSERT into employees(emp_no,birth_date,first_name,last_name,gender,hire_Date)
      VALUE(2,'2004-09-05',"Muhammad","shafiq","M",'2018-11-12')





--insertion into dept_emp-------
INSERT into dept_emp(emp_no,dept_no,from_date,to_date)
  VALUE(1,"123",'2014-02-02','2024-02-02')

INSERT into dept_emp(emp_no,dept_no,from_date,to_date)
    VALUE(2,"321",'2018-11-12','2030-02-02')





---------insertion into the salaries--------



INSERT into salaries(emp_no,salary,from_date,to_date)
    VALUE(1,20000,'2014-02-02','2024-02-02')

INSERT into salaries(emp_no,salary,from_date,to_date)
  VALUE(2,15000,'2018-11-12','2030-02-02')




--- insertion into the titles -------------------


INSERT into titles(emp_no,title,from_date,to_date)
  VALUE(1,"computer Science",'2014-02-02','2024-02-02')

INSERT into titles (emp_no,title,from_date,to_date)
VALUE(2,"software engineering",'2018-11-12','2030-02-02')



---insertion into the ------------

INSERT into dept_manager(dept_no,emp_no,from_date,to_date)
  VALUE(1,"123",'2014-02-02','2024-02-02')

INSERT into dept_manager(dept_no,emp_no,from_date,to_date)
    VALUE(2,"321",'2018-11-12','2030-02-02')





---- insertion into the Deparment;

INSERT into departments(dept_no,dept_name)
  VALUE('123',"Comuter Science")

INSERT into departments(dept_no,dept_name)
    VALUE('321',"Software engineering")




---update quires;
