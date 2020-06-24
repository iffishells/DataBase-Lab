show tables;

--query01
CREATE 
    DEFINER=CURRENT_USER
    SQL SECURITY DEFINER
    VIEW EMP_DATAILS AS
    SELECT * FROM EMPLOYEE;
--quer02
select * from EMP_DATAILS;

--quer03
SELECT EMP_FNAME,EMP_LNAME,PARK_CODE
    FROM EMP_DATAILS;


--query04
CREATE USER miftikhar@localhost identified by 'murti123';

--query5.1
GRANT  SELECT on themes_park.EMP_DATAILS TO iftikhar@localhost; 
  --futher show on the log file...........

--query 6
CREATE VIEW DETAIL AS
    select * FROM
        TICKET
        WHERE PARK_CODE='UK3452';


select * from DETAIL;

INSERT INTO  DETAIL VALUES(1234,25.00,'senior',"UK3452");


--7
-- FOR REVOKING
revoke create on themes_park.* from miftikhar@localhost;