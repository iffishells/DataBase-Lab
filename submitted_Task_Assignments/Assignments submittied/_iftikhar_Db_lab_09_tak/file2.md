mysql> show tables;
ERROR 1046 (3D000): No database selected
mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
+--------------------+
1 row in set (0.00 sec)

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| themes_park        |
+--------------------+
2 rows in set (0.00 sec)

mysql> use themes_park;
Reading table information for completion of table and column names
You can turn off this feature to get a quicker startup with -A

Database changed
mysql> show tables;
+-----------------------+
| Tables_in_themes_park |
+-----------------------+
| EMP_DATAILS           |
+-----------------------+
1 row in set (0.00 sec)

mysql> select * EMP_DATAILS;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'EMP_DATAILS' at line 1
mysql> select * FROM EMP_DATAILS;
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

mysql> show tables;
+-----------------------+
| Tables_in_themes_park |
+-----------------------+
| ATTRACTION            |
| EMP_DATAILS           |
+-----------------------+
2 rows in set (0.00 sec)

mysql> select * from ATTRACTION;
+------------+-----------------+-------------+------------------+-----------+
| ATTRACT_NO | ATTRACT_NAME    | ATTRACT_AGE | ATTRACT_CAPACITY | PARK_CODE |
+------------+-----------------+-------------+------------------+-----------+
|      10034 | ThunderCoaster  |          11 |               34 | FR1001    |
|      10056 | SpinningTeacups |           4 |               62 | FR1001    |
|      10067 | FlightToStars   |          11 |               24 | FR1001    |
|      10078 | Ant-Trap        |          23 |               30 | FR1001    |
|      10082 | NULL            |          10 |               40 | ZA1342    |
|      10098 | Carnival        |           3 |              120 | FR1001    |
|      20056 | 3D-Lego_Show    |           3 |              200 | UK3452    |
|      30011 | BlackHole2      |          12 |               34 | UK3452    |
|      30012 | Pirates         |          10 |               42 | UK3452    |
|      30044 | UnderSeaWord    |           4 |               80 | UK3452    |
|      98764 | GoldRush        |           5 |               80 | ZA1342    |
+------------+-----------------+-------------+------------------+-----------+
11 rows in set (0.00 sec)

mysql> create database temp
    -> ;
ERROR 1044 (42000): Access denied for user 'miftikhar'@'localhost' to database 'temp'
mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| themes_park        |
+--------------------+
2 rows in set (0.00 sec)

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| themes_park        |
+--------------------+
2 rows in set (0.00 sec)

mysql> create database temp
    -> ;
ERROR 1044 (42000): Access denied for user 'miftikhar'@'localhost' to database 'temp'
mysql> use themes_park ;
Database changed
mysql> create table temp( num1 int not null)
    -> ;
ERROR 1142 (42000): CREATE command denied to user 'miftikhar'@'localhost' for table 'temp'
mysql> create table temp(id int, name varchar(20));
ERROR 1142 (42000): CREATE command denied to user 'miftikhar'@'localhost' for table 'temp'
mysql> show themes_park ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'themes_park' at line 1
mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| themes_park        |
+--------------------+
2 rows in set (0.01 sec)

mysql> used themes_park 
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'used themes_park' at line 1
mysql> use themes_park
Database changed
mysql> create table temp(id int, name varchar(20));
ERROR 1142 (42000): CREATE command denied to user 'miftikhar'@'localhost' for table 'temp'
mysql> create table temp(id int, name varchar(20));
ERROR 1142 (42000): CREATE command denied to user 'miftikhar'@'localhost' for table 'temp'
mysql> create database temp;
ERROR 1044 (42000): Access denied for user 'miftikhar'@'localhost' to database 'temp'
mysql> create database temp;
ERROR 1044 (42000): Access denied for user 'miftikhar'@'localhost' to database 'temp'
mysql> create database temp
    -> ;
ERROR 1044 (42000): Access denied for user 'miftikhar'@'localhost' to database 'temp'
mysql> create database tempo
    -> ;
ERROR 1044 (42000): Access denied for user 'miftikhar'@'localhost' to database 'tempo'
mysql> 