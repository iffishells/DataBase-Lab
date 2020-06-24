
mysql> use themes_park;
Reading table information for completion of table and column names
You can turn off this feature to get a quicker startup with -A

Database changed
mysql> show tables;
+-----------------------+
| Tables_in_themes_park |
+-----------------------+
| ATTRACTION            |
| EMPLOYEE              |
| EMP_DATAILS           |
| HOURS                 |
| SALES                 |
| THEMEPARK             |
| TICKET                |
+-----------------------+
7 rows in set (0.00 sec)

mysql> drop view EMP_DATAILS;
Query OK, 0 rows affected (0.02 sec)

mysql> show tables;
+-----------------------+
| Tables_in_themes_park |
+-----------------------+
| ATTRACTION            |
| EMPLOYEE              |
| HOURS                 |
| SALES                 |
| THEMEPARK             |
| TICKET                |
+-----------------------+
6 rows in set (0.00 sec)

mysql> CREATE 
    ->     DEFINER=CURRENT_USER
    ->     SQL SECURITY DEFINER
    ->     VIEW EMP_DATAILS AS
    ->     SELECT * FROM EMPLOYEE;
Query OK, 0 rows affected (0.04 sec)

mysql> select * from EMP_DATAILS;
+---------+-----------+-----------+-----------+------------+---------------+---------------+-----------+-----------+
| EMP_NUM | EMP_TITLE | EMP_LNAME | EMP_FNAME | EMP_DOB    | EMP_HIRE_DATE | EMP_AREA_CODE | EMP_PHONE | PARK_CODE |
+---------+-----------+-----------+-----------+------------+---------------+---------------+-----------+-----------+
|     101 | Ms        | Ricardo   | Marshel   | 1978-03-19 | 1996-04-25    | 0181          | 324-4472  | UK3452    |
|     102 | Mr        | Arshad    | Arif      | 1969-11-14 | 1990-12-20    | 7253          | 675-8993  | FR1001    |
|     103 | Ms        | Roberts   | Anne      | 1974-10-16 | 1994-08-16    | 0181          | 898-3456  | UK3452    |
|     104 | Mr        | Denver    | Enrica    | 1980-11-08 | 2001-10-20    | 7253          | 504-4434  | ZA1342    |
|     105 | Ms        | Namowa    | Mirrelle  | 1990-03-14 | 2006-11-08    | 0181          | 890-3243  | FR1001    |
|     106 | Mrs       | Iftikhar  | Gemma     | 1968-02-12 | 1989-01-05    | 0181          | 324-7845  | ZA1342    |
+---------+-----------+-----------+-----------+------------+---------------+---------------+-----------+-----------+
6 rows in set (0.00 sec)

mysql> SELECT EMP_FNAME,EMP_LNAME,PARK_CODE
    ->     FROM EMP_DATAILS;
+-----------+-----------+-----------+
| EMP_FNAME | EMP_LNAME | PARK_CODE |
+-----------+-----------+-----------+
| Marshel   | Ricardo   | UK3452    |
| Arif      | Arshad    | FR1001    |
| Anne      | Roberts   | UK3452    |
| Enrica    | Denver    | ZA1342    |
| Mirrelle  | Namowa    | FR1001    |
| Gemma     | Iftikhar  | ZA1342    |
+-----------+-----------+-----------+
6 rows in set (0.00 sec)

mysql> CREATE USER miftikhar@localhost identified by 'murti123';
Query OK, 0 rows affected (0.00 sec)

mysql> GRANT SELECT ON themes_park.EMP_DATAILS TO miftikhar@localhost;
Query OK, 0 rows affected (0.00 sec)

mysql> SELECT * FROM EMP_DATAILS;
+---------+-----------+-----------+-----------+------------+---------------+---------------+-----------+-----------+
| EMP_NUM | EMP_TITLE | EMP_LNAME | EMP_FNAME | EMP_DOB    | EMP_HIRE_DATE | EMP_AREA_CODE | EMP_PHONE | PARK_CODE |
+---------+-----------+-----------+-----------+------------+---------------+---------------+-----------+-----------+
|     101 | Ms        | Ricardo   | Marshel   | 1978-03-19 | 1996-04-25    | 0181          | 324-4472  | UK3452    |
|     102 | Mr        | Arshad    | Arif      | 1969-11-14 | 1990-12-20    | 7253          | 675-8993  | FR1001    |
|     103 | Ms        | Roberts   | Anne      | 1974-10-16 | 1994-08-16    | 0181          | 898-3456  | UK3452    |
|     104 | Mr        | Denver    | Enrica    | 1980-11-08 | 2001-10-20    | 7253          | 504-4434  | ZA1342    |
|     105 | Ms        | Namowa    | Mirrelle  | 1990-03-14 | 2006-11-08    | 0181          | 890-3243  | FR1001    |
|     106 | Mrs       | Iftikhar  | Gemma     | 1968-02-12 | 1989-01-05    | 0181          | 324-7845  | ZA1342    |
+---------+-----------+-----------+-----------+------------+---------------+---------------+-----------+-----------+
6 rows in set (0.00 sec)

mysql> grant SELECT ON themes_park.ATTRACTION TO miftikhar@localhost;
Query OK, 0 rows affected (0.00 sec)

mysql> show grant from miftikhar@localhost
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'grant from miftikhar@localhost' at line 1
mysql> show grants for miftikhar@localhost
    -> ;
+------------------------------------------------------------------------+
| Grants for miftikhar@localhost                                         |
+------------------------------------------------------------------------+
| GRANT USAGE ON *.* TO 'miftikhar'@'localhost'                          |
| GRANT SELECT ON `themes_park`.`EMP_DATAILS` TO 'miftikhar'@'localhost' |
| GRANT SELECT ON `themes_park`.`ATTRACTION` TO 'miftikhar'@'localhost'  |
+------------------------------------------------------------------------+
3 rows in set (0.00 sec)

mysql> grant select on themes_park.EMP_DATAILS to miftikhar@localhost with grant option;
Query OK, 0 rows affected (0.00 sec)

mysql> grant create on themes_park.* to miftikhar@localhost;
Query OK, 0 rows affected (0.04 sec)

mysql> GRANT CREATE USER ON *.* TO miftikhar@localhost
    -> ;
Query OK, 0 rows affected (0.00 sec)

mysql> show tables;
+-----------------------+
| Tables_in_themes_park |
+-----------------------+
| ATTRACTION            |
| EMPLOYEE              |
| EMP_DATAILS           |
| HOURS                 |
| SALES                 |
| THEMEPARK             |
| TICKET                |
+-----------------------+
7 rows in set (0.00 sec)

mysql> describe TICKET
    -> ;
+--------------+---------------+------+-----+---------+-------+
| Field        | Type          | Null | Key | Default | Extra |
+--------------+---------------+------+-----+---------+-------+
| TICKET_NO    | decimal(10,0) | NO   | PRI | NULL    |       |
| TICKET_PRICE | decimal(4,2)  | NO   |     | 0.00    |       |
| TICKET_TYPE  | varchar(10)   | YES  |     | NULL    |       |
| PARK_CODE    | varchar(10)   | YES  | MUL | NULL    |       |
+--------------+---------------+------+-----+---------+-------+
4 rows in set (0.04 sec)

mysql> select * from ticket;
ERROR 1146 (42S02): Table 'themes_park.ticket' doesn't exist
mysql> select * from TICKET;
+-----------+--------------+-------------+-----------+
| TICKET_NO | TICKET_PRICE | TICKET_TYPE | PARK_CODE |
+-----------+--------------+-------------+-----------+
|     11001 |        24.99 | Adult       | SP4533    |
|     11002 |        14.99 | Child       | SP4533    |
|     11003 |        10.99 | Senior      | SP4533    |
|     13001 |        18.99 | Child       | FR1001    |
|     13002 |        34.99 | Adult       | FR1001    |
|     13003 |        20.99 | Senior      | FR1001    |
|     67832 |        18.56 | Child       | ZA1342    |
|     67833 |        28.67 | Adult       | ZA1342    |
|     67855 |        12.12 | Senior      | ZA1342    |
|     88567 |        22.50 | Child       | UK3452    |
|     88568 |        42.10 | Adult       | UK3452    |
|     89720 |        10.99 | Senior      | UK3452    |
+-----------+--------------+-------------+-----------+
12 rows in set (0.04 sec)

mysql> select VIEW TICKET_detail AS
    ->     select * FROM
    ->         TICKET
    ->         WHERE PARK_CODE='UK3452';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'AS
    select * FROM
        TICKET
        WHERE PARK_CODE='UK3452'' at line 1
mysql> elect VIEW DETAIL AS
    ->     select * FROM
    ->         TICKET
    ->         WHERE PARK_CODE='UK3452';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'elect VIEW DETAIL AS
    select * FROM
        TICKET
        WHERE PARK_CODE='U' at line 1
mysql> CREATE VIEW DETAIL AS
    ->     select * FROM
    ->         TICKET
    ->         WHERE PARK_CODE='UK3452';
Query OK, 0 rows affected (0.04 sec)

mysql> select * from DETAIL;
+-----------+--------------+-------------+-----------+
| TICKET_NO | TICKET_PRICE | TICKET_TYPE | PARK_CODE |
+-----------+--------------+-------------+-----------+
|     88567 |        22.50 | Child       | UK3452    |
|     88568 |        42.10 | Adult       | UK3452    |
|     89720 |        10.99 | Senior      | UK3452    |
+-----------+--------------+-------------+-----------+
3 rows in set (0.07 sec)

mysql> deccribe TCIKET
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'deccribe TCIKET' at line 1
mysql> DESCRIBE TICKET;
+--------------+---------------+------+-----+---------+-------+
| Field        | Type          | Null | Key | Default | Extra |
+--------------+---------------+------+-----+---------+-------+
| TICKET_NO    | decimal(10,0) | NO   | PRI | NULL    |       |
| TICKET_PRICE | decimal(4,2)  | NO   |     | 0.00    |       |
| TICKET_TYPE  | varchar(10)   | YES  |     | NULL    |       |
| PARK_CODE    | varchar(10)   | YES  | MUL | NULL    |       |
+--------------+---------------+------+-----+---------+-------+
4 rows in set (0.01 sec)

mysql> 
mysql> INSERT TABLE DETAIL INTO(1234),235,'senior',"UK3452");;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'TABLE DETAIL INTO(1234),235,'senior',"UK3452")' at line 1
ERROR: 
No query specified

ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'descrbie DETAIL' at line 1
mysql> describe TICKET;
+--------------+---------------+------+-----+---------+-------+
| Field        | Type          | Null | Key | Default | Extra |
+--------------+---------------+------+-----+---------+-------+
| TICKET_NO    | decimal(10,0) | NO   | PRI | NULL    |       |
| TICKET_PRICE | decimal(4,2)  | NO   |     | 0.00    |       |
| TICKET_TYPE  | varchar(10)   | YES  |     | NULL    |       |
| PARK_CODE    | varchar(10)   | YES  | MUL | NULL    |       |
+--------------+---------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql> 
mysql> INSERT INTO  DETAIL VALUES(1234,25.00,'senior',"UK3452");
Query OK, 1 row affected (0.12 sec)

mysql> revoke create on themes_park.* from miftikhar@localhost;
Query OK, 0 rows affected (0.00 sec)

mysql> show grant for miftikhar@localhost;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'grant for miftikhar@localhost' at line 1
mysql> show grants for miftikhar@localhost;
+------------------------------------------------------------------------------------------+
| Grants for miftikhar@localhost                                                           |
+------------------------------------------------------------------------------------------+
| GRANT CREATE USER ON *.* TO 'miftikhar'@'localhost'                                      |
| GRANT SELECT ON `themes_park`.`EMP_DATAILS` TO 'miftikhar'@'localhost' WITH GRANT OPTION |
| GRANT SELECT ON `themes_park`.`ATTRACTION` TO 'miftikhar'@'localhost'                    |
+------------------------------------------------------------------------------------------+
3 rows in set (0.00 sec)

mysql> grant create on *.* to miftikhar@localhost;
Query OK, 0 rows affected (0.00 sec)

