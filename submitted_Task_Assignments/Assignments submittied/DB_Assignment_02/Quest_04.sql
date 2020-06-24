
create table products(

	p_id int Not Null ,
	p_name varchar(30) not Null,
	units int not null,
	unit_price int not Null,
	type varchar(30)  not null,
	s_id int not Null,
	constraint pk_product primary key (p_id),
	constraint fk_product_supplier foreign key(s_id) references supplier(s_id) on delete cascade

);
create table supplier(

	s_id int not null,
	s_name varchar(30) not null,
	contact varchar(30) not null,
	city varchar(30) not null,
	constraint pk_suppplier primary key(s_id)
);

create table orders(
	order_id int not Null,
	customer_name varchar(30) not null,
	order_date date not null,
	constraint pk_orders primary key(order_id)

	);

create table order_detail
	(
		p_id int not Null,
		order_id int not null,
		unit_purchased  int not Null,
		constraint pk_order_datail primary key (p_id,order_id)


		);
insert into products values(1005 ,"ponston",100,15,"tablets",312);
insert into products values(1421 ,"Brufen",25,35,"syrup",657);
insert into products values(3125 ,"Avil",122,26,"syrup",478);
insert into products values(1215 ,"Flagyl",42,30,"tablets",987);
insert into products values(7513 ,"Avil",140,20,"injection",478);
insert into products values(1216 ,"Flagyl",10,35,"syrup",987);
insert into products values(1007 ,"Disprin",98,15,"tablets",320);

insert into supplier values(320,"Munir Brother","0321-1234567","Karachi");
insert into supplier values(312,"Aliance Pharmacetucial ","0313-76554321","Peshawar");
insert into supplier values(478,"Abbot Pharmaceuticals","0300-98765432","Lahore");
insert into supplier values(357,"Sanofi Aventis ","03005632476","Isalamabad");
insert into supplier values(987,"Ferozsons Laborities","0301-13342571","Peshawar");
insert into supplier values(657,"Ferozsons Laborities","0301-13342571","Peshawar");


insert into orders values(22,"waleed ali","2014-11-25");
insert into orders values(23,"Azhar akbar","2014-12-02");
insert into orders values(24,"Shezan khan","2014-12-05");
insert into orders values(25,"Javed iqbal","2015-01-15");	
insert into orders values(26,"tariq Khan","2015-06-23");

insert into order_detail values(1007,22,5);
insert into order_detail values(1216,22,5);
insert into order_detail values(1005,22,5);	
insert into order_detail values(1421,23,5);
insert into order_detail values(1005,23,5);
insert into order_detail values(3215,23,5);
insert into order_detail values(7513,23,5);
insert into order_detail values(1421,24,5);
insert into order_detail values(1215,24,5);
insert into order_detail values(1005,25,5);
insert into order_detail values(1215,26,5);
insert into order_detail values(1421,26,5);
insert into order_detail values(1421,26,5);


------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------
Question Number 04

 1. Show order id, customer name and order date for those orders in which Flagyl Syrup was sold.


select orders.order_id,orders.customer_name,orders.order_date
	from orders
	inner join order_detail on orders.order_id=order_detail.order_id
	inner join products on products.p_id=order_detail.p_id
	where p_name ="Flagyl"
	

2 : 
2. Show complete order details (with information from products, orders and order_detail table)
for the Customer Javed Iqba


select *
	from orders
	inner join order_detail on orders.order_id=order_detail.order_id
	inner join products on  order_detail.p_id =products.p_id 
	where orders.customer_name="Javed iqbal"


3. Show the number of products for the supplier named Muneer Brothers.

select count(p_id) from 
	supplier
	inner join products on products.s_id= supplier.s_id
	group by s_name
	having supplier.s_name="Munir Brother"

4 : Delete the Avil syrup product from the product table.

delete from products
	where p_name="Avil"

5. Show products along with suppliers names for those suppliers that are in Peshawar.

select products.p_name Product_Name , supplier.s_name as Supplier_Name
	from products 
	inner join supplier on products.s_id= supplier.s_id
	where city= "Peshawar"

6. Show the number of products Sanofi Aventis are supplying

select count(products.p_id)
	from products
	inner join supplier on products.s_id=products.s_id
	group by supplier.s_name
	having supplier.s_name = "Sanofi Aventis"


