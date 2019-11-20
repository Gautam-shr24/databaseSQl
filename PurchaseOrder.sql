select * from buyer_table

create table Buyer_Detail
(
Buyer_Id int primary key,
Buyer_name varchar2(20) not null,
Buyer_Address varchar2(30) not null,
Phone_No varchar2(20) not null,
Email_Id varchar2(40) not null,

Is_Active varchar2(10),
Buyer_Password varchar2(20) not null,
Role_Id int,
Foreign key (Role_Id) References Master_RoleTab,

Created_Date date,
Created_By varchar2(20),
Updated_Date date,
Updated_By varchar2(20)
)

-----------------------iteam------------------

create table products
(
p_Id int primary key,
p_name varchar2(20) not null,
price int not null,
vender_Id int,
Foreign key (vender_Id) References vendor
)

----------vendor-------------------------

create table vendor
(
vendor_Id int primary key,
vendor_name varchar2(20) not null
)

select * from po_order
drop table vendor

commit
--------------ORDERDETAIL--------------

create table po_order
(
po_Id int primary key,
po_name varchar2(20) not null,
ship_date date,
address varchar2(50) not null,

p_Id int,
Foreign key (p_Id) References products
)

commit

---------------------poStatus-------------

create table po_status
(
status_Id int primary key,
status_name varchar2(20) not null,

po_Id int,
Foreign key (po_Id) References po_order
)

commit
drop table po_status