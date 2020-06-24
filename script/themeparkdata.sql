/* Themepark.SQL                                 	*/
/* Introduction to SQL 					*/
/* Script file for MySQL  DBMS				*/
/* This script file creates the data for the following tables:	*/
/* THEMEPARK, EMPLOYEE, TICKET, ATTRACTION, HOURS	*/
/* and loads the default data rows			*/

/*load data using files*/

/*themeparl.txt
FR1001,FairyLand,PARIS,FR
NL1202,Efling,NOORD,NL
SP4533,AdventurePort,BARCELONA,SP
SW2323,Labyrinthe,LAUSANNE,SW
UK2622,MiniLand,WINDSOR,UK
UK3452,PleasureLand,STOKE,UK
ZA1342,GoldTown,JOHANNESBURG,ZA
*/
load data local infile 'D:/themepark.txt' into table themepark fields terminated by ','; 


/*Delete al records(rows) in table*/
delete from themepark; 

/* Loading data rows					*/


/* ThemePark rows						*/
INSERT INTO THEMEPARK VALUES ('FR1001','FairyLand','PARIS','FR');
INSERT INTO THEMEPARK VALUES ('NL1202','Efling','NOORD','NL');
INSERT INTO THEMEPARK VALUES ('SP4533','AdventurePort','BARCELONA','SP');
INSERT INTO THEMEPARK VALUES ('SW2323','Labyrinthe','LAUSANNE','SW');
INSERT INTO THEMEPARK VALUES ('UK2622','MiniLand','WINDSOR','UK');
INSERT INTO THEMEPARK VALUES ('UK3452','PleasureLand','STOKE','UK');
INSERT INTO THEMEPARK VALUES ('ZA1342','GoldTown','JOHANNESBURG','ZA');

/* Employee rows						*/
INSERT INTO EMPLOYEE VALUES (100,'Ms','Calderdale','Emma','1972-06-15','1992-03-15','0181','324-9134','FR1001');
INSERT INTO EMPLOYEE VALUES (101,'Ms','Ricardo','Marshel','1978-03-19','1996-04-25','0181','324-4472','UK3452');
INSERT INTO EMPLOYEE VALUES (102,'Mr','Arshad','Arif','1969-11-14','1990-12-20','7253','675-8993','FR1001');
INSERT INTO EMPLOYEE VALUES (103,'Ms','Roberts','Anne','1974-10-16','1994-08-16','0181','898-3456','UK3452');
INSERT INTO EMPLOYEE VALUES (104,'Mr','Denver','Enrica','1980-11-08','2001-10-20','7253','504-4434','ZA1342');
INSERT INTO EMPLOYEE VALUES (105,'Ms','Namowa','Mirrelle','1990-03-14','2006-11-08','0181','890-3243','FR1001');
INSERT INTO EMPLOYEE VALUES (106,'Mrs','Smith','Gemma','1968-02-12','1989-01-05','0181','324-7845','ZA1342');


/* Ticket rows						*/
INSERT INTO TICKET VALUES (11001,24.99,'Adult',	'SP4533');
INSERT INTO TICKET VALUES (11002,14.99,'Child',	'SP4533');
INSERT INTO TICKET VALUES (11003,10.99,'Senior','SP4533');
INSERT INTO TICKET VALUES (13001,18.99,'Child','FR1001');
INSERT INTO TICKET VALUES (13002,34.99,'Adult','FR1001');
INSERT INTO TICKET VALUES (13003,20.99,'Senior','FR1001');
INSERT INTO TICKET VALUES (67832,18.56,'Child','ZA1342');
INSERT INTO TICKET VALUES (67833,28.67,'Adult','ZA1342');
INSERT INTO TICKET VALUES (67855,12.12,'Senior','ZA1342');
INSERT INTO TICKET VALUES (88567,22.50,'Child','UK3452');
INSERT INTO TICKET VALUES (88568,42.10,'Adult','UK3452');
INSERT INTO TICKET VALUES (89720,10.99,'Senior','UK3452');

/* Attraction rows						*/

INSERT INTO ATTRACTION VALUES (10034,'ThunderCoaster',11,34,'FR1001');
INSERT INTO ATTRACTION VALUES (10056,'SpinningTeacups',4,62,'FR1001');
INSERT INTO ATTRACTION VALUES (10067,'FlightToStars',11,24,'FR1001');
INSERT INTO ATTRACTION VALUES (10078,'Ant-Trap',23,30,'FR1001');
INSERT INTO ATTRACTION VALUES (10098,'Carnival',3,120,'FR1001');
INSERT INTO ATTRACTION VALUES (20056,'3D-Lego_Show',3,200,'UK3452');
INSERT INTO ATTRACTION VALUES (30011,'BlackHole2',12,34,'UK3452');
INSERT INTO ATTRACTION VALUES (30012,'Pirates',10,42,'UK3452');
INSERT INTO ATTRACTION VALUES (30044,'UnderSeaWord',4,80,'UK3452');
INSERT INTO ATTRACTION VALUES (98764,'GoldRush',5,80,'ZA1342');
/* Attraction with no name */
INSERT INTO ATTRACTION VALUES (10082,NULL,10,40,'ZA1342');


/* hours rows						*/

INSERT INTO HOURS VALUES (100,10034,6,6.5,'2007-05-18');
INSERT INTO HOURS VALUES (100,10034,6,6.5,'2007-05-20');
INSERT INTO HOURS VALUES (101,10034,6,6.5,'2007-05-18');
INSERT INTO HOURS VALUES (102,30012,3,5.99,'2007-05-23');
INSERT INTO HOURS VALUES (102,30044,6,5.99,'2007-05-21');
INSERT INTO HOURS VALUES (102,30044,3,5.99,'2007-05-22');
INSERT INTO HOURS VALUES (104,30011,6,7.2,'2007-05-21');
INSERT INTO HOURS VALUES (104,30012,6,7.2,'2007-05-22');
INSERT INTO HOURS VALUES (105,10078,3,8.5,'2007-05-18');
INSERT INTO HOURS VALUES (105,10098,3,8.5,'2007-05-18');
INSERT INTO HOURS VALUES (105,10098,6,8.5,'2007-05-19');


/* SALES rows						*/

INSERT INTO SALES VALUES (12781,'FR1001','2007-05-18');
INSERT INTO SALES VALUES (12782,'FR1001','2007-05-18');
INSERT INTO SALES VALUES (12783,'FR1001','2007-05-18');
INSERT INTO SALES VALUES (12784,'FR1001','2007-05-18');
INSERT INTO SALES VALUES (12785,'FR1001','2007-05-18');
INSERT INTO SALES VALUES (12786,'FR1001','2007-05-18');
INSERT INTO SALES VALUES (34534,'UK3452','2007-05-18');
INSERT INTO SALES VALUES (34535,'UK3452','2007-05-18');
INSERT INTO SALES VALUES (34536,'UK3452','2007-05-18');
INSERT INTO SALES VALUES (34537,'UK3452','2007-05-18');
INSERT INTO SALES VALUES (34538,'UK3452','2007-05-18');
INSERT INTO SALES VALUES (34539,'UK3452','2007-05-18');
INSERT INTO SALES VALUES (34540,'UK3452','2007-05-18');
INSERT INTO SALES VALUES (34541,'UK3452','2007-05-18');
INSERT INTO SALES VALUES (67589,'ZA1342','2007-05-18');
INSERT INTO SALES VALUES (67590,'ZA1342','2007-05-18');
INSERT INTO SALES VALUES (67591,'ZA1342','2007-05-18');
INSERT INTO SALES VALUES (67592,'ZA1342','2007-05-18');
INSERT INTO SALES VALUES (67593,'ZA1342','2007-05-18');

/* SALES_LINE rows						*/


INSERT INTO SALES_LINE VALUES (12781,1,13002,2,69.98);
INSERT INTO SALES_LINE VALUES (12781,2,13001,1,14.99);
INSERT INTO SALES_LINE VALUES (12782,1,13002,2,69.98);
INSERT INTO SALES_LINE VALUES (12783,1,13003,2,41.98);
INSERT INTO SALES_LINE VALUES (12784,2,13001,1,14.99);
INSERT INTO SALES_LINE VALUES (12785,1,13001,1,14.99);
INSERT INTO SALES_LINE VALUES (12785,2,13002,1,34.99);
INSERT INTO SALES_LINE VALUES (12785,3,13002,4,139.96);
INSERT INTO SALES_LINE VALUES (34534,1,88568,4,168.40);
INSERT INTO SALES_LINE VALUES (34534,2,88567,1,22.50);
INSERT INTO SALES_LINE VALUES (34534,3,89720,2,21.98);
INSERT INTO SALES_LINE VALUES (34535,1,88568,2,84.20);
INSERT INTO SALES_LINE VALUES (34536,1,89720,2,21.98);
INSERT INTO SALES_LINE VALUES (34537,1,88568,2,84.20);
INSERT INTO SALES_LINE VALUES (34537,2,88567,1,22.50);
INSERT INTO SALES_LINE VALUES (34538,1,89720,2,21.98);
INSERT INTO SALES_LINE VALUES (34539,1,89720,2,21.98);
INSERT INTO SALES_LINE VALUES (34539,2,88568,2,84.20);
INSERT INTO SALES_LINE VALUES (34540,1,88568,4,168.40);
INSERT INTO SALES_LINE VALUES (34540,2,88567,1,22.50);
INSERT INTO SALES_LINE VALUES (34540,3,89720,2,21.98);
INSERT INTO SALES_LINE VALUES (34541,1,88568,2,84.20);
INSERT INTO SALES_LINE VALUES (67589,1,67833,2,57.34);
INSERT INTO SALES_LINE VALUES (67589,2,67832,2,37.12);
INSERT INTO SALES_LINE VALUES (67590,1,67833,2,57.34);
INSERT INTO SALES_LINE VALUES (67590,2,67832,2,37.12);
INSERT INTO SALES_LINE VALUES (67591,1,67832,1,18.56);
INSERT INTO SALES_LINE VALUES (67591,2,67855,1,12.12);
INSERT INTO SALES_LINE VALUES (67592,1,67833,4,114.68);
INSERT INTO SALES_LINE VALUES (67593,1,67833,2,57.34);
INSERT INTO SALES_LINE VALUES (67593,2,67832,2,37.12);

commit;


