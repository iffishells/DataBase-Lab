CREATE TABLE PRODUCTS(

	p_id int NOT NULL PRIMARY KEY ,
	p_name VARCHAR(60) NOT NULL,
	units int NOT NULL,
	unit_price NUMERIC(60) NOT NULL,
	type VARCHAR(60) NOT NULL,
	s_id int NOT NULL ,
	FOREIGN KEY (s_id) REFERENCES suppliers(s_id) on DELETE CASCADE

);

CREATE TABLE suppliers(

	s_id int NOT NULL PRIMARY KEY,
	s_name VARCHAR(60) NOT NULL,
	contact VARCHAR(60) NOT NULL,
	city VARCHAR(60) NOT NULL
		)


CREATE TABLE orders(
	order_id int NOT NULL PRIMARY key,
	customer_name VARCHAR(60) NOT NULL,
	order_date VARCHAR(60) NOT NULL
	);
CREATE TABLE order_detail(
	p_id int NOT NULL ,
	order_id int NOT NULL  ,
	unit_purchased int NOT NULL,
	PRIMARY key (p_id,order_id)

	);


____insertion____
insert into PRODUCTS(p_id,p_name,units,unit_price,type,s_id)
	VALUE(1005,'ponstan',100,15,'tablets',312);

insert into PRODUCTS(p_id,p_name,units,unit_price,type,s_id)
VALUES (1421,'BRUGFEN',25,35,'srup',657);


insert into PRODUCTS(p_id,p_name,units,unit_price,type,s_id)
VALUES (3125,'Avil',122,26,'srup',478);


insert into PRODUCTS(p_id,p_name,units,unit_price,type,s_id)
VALUES (1215,'flagyl',42,30,'tablets',987);


insert into PRODUCTS(p_id,p_name,units,unit_price,type,s_id)
VALUES (7513,'Avil',140,20,'injection',478);


insert into PRODUCTS(p_id,p_name,units,unit_price,type,s_id)
VALUES (1216,'flagyl',10,35,'syrup',987);

insert into PRODUCTS(p_id,p_name,units,unit_price,type,s_id)
VALUES (1007,'disprin',98,15,'tablets',320);

--- insert into the supplier tables
insert into suppliers(s_id,s_name,contact,city)
	VALUES(320,'Munir Brother','0321-123456789','karachi');

insert into suppliers(s_id,s_name,contact,city)
	VALUES(312,'Aliance phamrecuticals','0313-7654321','Peshawar');

insert into suppliers(s_id,s_name,contact,city)
	VALUES(478,'Ab bot phamrecuticals','0300-987654321','Lahore');

insert into suppliers(s_id,s_name,contact,city)
	VALUES(657,'Senofi Aventis','0333-5632476','isalamabad');

insert into suppliers(s_id,s_name,contact,city)
	VALUES(987,'Ferozsons laboratories','0301-1934257','Peshawar');



---insertion into order table
insert into orders(order_id,customer_name,order_date)
	VALUES(22,'Waleed ali','11/25/2014')

insert into orders(order_id,customer_name,order_date)
	VALUES(23,'azhar akbhar','12/02/2014')

insert into orders(order_id,customer_name,order_date)
	VALUES(24,'Shehzab khan','12/05/2014')

insert into orders(order_id,customer_name,order_date)
	VALUES(25,'javed iqbal','1/15/2015')

insert into orders(order_id,customer_name,order_date)
	VALUES(26,'Tariq irqbal','06/23/2015')


---insertion in order detail tables
insert into order_detail(p_id,order_id,unit_purchased)
	VALUES(1007,22,5);


insert into order_detail(p_id,order_id,unit_purchased)
	VALUES(1216,22,1);

insert into order_detail(p_id,order_id,unit_purchased)
	VALUES(1005,22,4);

insert into order_detail(p_id,order_id,unit_purchased)
	VALUES(1421,23,1);

insert into order_detail(p_id,order_id,unit_purchased)
	VALUES(1005,23,1);


insert into order_detail(p_id,order_id,unit_purchased)
	VALUES(3215,23,2);

insert into order_detail(p_id,order_id,unit_purchased)
	VALUES(7513,23,3);

insert into order_detail(p_id,order_id,unit_purchased)
	VALUES(1421,24,2);

insert into order_detail(p_id,order_id,unit_purchased)
	VALUES(1215,24,1);

insert into order_detail(p_id,order_id,unit_purchased)
	VALUES(1005,25,5);

insert into order_detail(p_id,order_id,unit_purchased)
	VALUES(1215,26,1);

insert into order_detail(p_id,order_id,unit_purchased)
	VALUES(1421,26,3);


--4--
----DELETE all tablets
EXEC sp_MSforeachtable @command = "drop table?"
