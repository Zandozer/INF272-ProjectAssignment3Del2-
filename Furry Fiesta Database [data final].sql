---------------------------CREATING DATABASE & CHECKING IF IT ALREADY EXISTS---------------------------
Use master
Go

if exists (Select * from sys.databases where name ='FurryFiestaDatabase')
Drop Database FurryFiestaDatabase
GO

Create Database FurryFiestaDatabase
GO

Use FurryFiestaDatabase
GO


-------------------------------------CREAING DATA TABLES--------------------------------------------

/*CREATE TITLE TABLE*/

Create table TITLE
(
Title_ID int Primary Key  identity(1,1) Not null, --identity(1,1)
Title_Name varchar(20)
)
Go

/*CREATE ACCESS LEVEL TABLE*/

Create table ACCESSLEVEL
(
Access_Level_ID int Primary Key identity(1,1) Not null, --identity(1,1)
Access_Level_Description varchar(50)
)
GO

/*CREATE EMPLOYEE TABLE*/

Create table EMPLOYEE
(
Employee_ID int Primary Key identity(1,1) Not null, --identity(1,1)
First_Name varchar(50),
Last_Name varchar(50),
Title_ID int references TITLE(Title_ID),
Gender varchar(20),
Employee_Email varchar(100),
Employee_Cell_No varchar(20), --char(10)
Employee_Address_Line varchar(100)
)
Go

/*CREATE CLIENT TABLE*/

Create table CLIENT
(
Client_ID int Primary Key identity(1,1) Not null,--identity(1,1)
First_Name varchar(50),
Last_Name varchar(50),
Title_ID int references TITLE(Title_ID),
Client_Email varchar(100),
Client_Cell_No char(10),
Client_Address_Line varchar(100) 
)
GO


/*CREATE SYSTEM USER TABLE*/

Create table SYSTEMUSER	
(
UserName varchar(100) Primary Key Not null,
User_Password varchar(100),
User_Password_Question varchar(200),
User_Password_Answer varchar(100),
Access_Level_ID int references ACCESSLEVEL(Access_Level_ID),
Employee_ID int references EMPLOYEE(Employee_ID),
)
GO


/*CREATE SUPPLIER TABLE*/

Create table SUPPLIER
(
Supplier_ID int Primary Key identity(1,1) Not null, --identity(1,1)
Supplier_Name varchar(100),
Rep_First_Name varchar(50),
Rep_Last_Name varchar(50),
Title_ID int references TITLE(Title_ID),
Rep_Email varchar(100),
Rep_Cell_No char(10),
Supplier_Address_Line varchar(100)
)
GO

/*CREATE PAYMENT TYPE TABLE*/

Create table PAYMENTTYPE
(
Payment_Type_ID int Primary Key identity(1,1) Not null, --identity(1,1)
Payment_Type_Description varchar(50)
)
GO


/*CREATE PRODUCT TYPE TABLE*/

Create table PRODUCTTYPE --ProductType
(
Product_Type_ID int Primary Key identity(1,1) Not null, --identity(1,1)
Product_Type_Description varchar(50)
)
GO


/*CREATE PRODUCT TABLE*/

Create table PRODUCT
(
Product_ID int Primary Key identity(1,1) Not null,
Product_Name varchar(50),
Product_Description varchar(100),
Product_Item_Quantity int,
Product_Reorder_Level int,
Product_Price decimal (18,2),
Product_Type_ID int references PRODUCTTYPE(Product_Type_ID),
)
GO

/*CREATE DELIVERY TABLE*/

Create table DELIVERY
(
Delivery_ID int Primary Key identity(1,1) Not null,
Delivery_Date datetime,
Delivery_Address varchar(200),
Freight_Cost decimal (18,2)
)
GO


/*CREATE ORDER TABLE*/

Create table ORDERDETAILS --Order Details
(
Order_ID int Primary Key identity(1,1) Not null,
Employee_ID int references EMPLOYEE(Employee_ID), --LoggedIn Persn
Supplier_ID int references SUPPLIER(Supplier_ID),
Order_Date datetime
)
GO


/*CREATE OREDER ITEM TABLE*/

Create table ORDERITEM
(
OrderItem_ID int Primary Key identity(1,1) Not null,
Order_ID int references ORDERDETAILS(Order_ID) Not null,
Product_ID int references PRODUCT(Product_ID) Not null,
Order_Quantity int,
Cost decimal (18,2)
)
GO

/*CREATE SALE TABLE*/
Create table SALE
(
Sale_ID int Primary Key identity(1,1) Not null,
Client_ID int references CLIENT(Client_ID),
Employee_ID int references EMPLOYEE(Employee_ID),
Sale_Date datetime,
Delivery_ID int references DELIVERY(Delivery_ID)
)

/*CREATE SALELINE TABLE*/
Create table SALELINE
(
SaleLine_ID int Primary Key identity(1,1) Not null,
Product_ID int references PRODUCT(Product_ID),
Sale_ID int references SALE(SALE_ID),
Quantity int,
)


/*CREATE ORDERPAYMENT TABLE*/

Create table ORDERPAYMENT
(
OPayment_ID int Primary Key identity(1,1) Not null,
Order_ID int references ORDERDETAILS(Order_ID),
Payment_Type_ID int references PAYMENTTYPE(Payment_Type_ID),
Employee_ID int references EMPLOYEE(Employee_ID),
Supplier_ID int references SUPPLIER(Supplier_ID),
Payment_Amount decimal (18,2),
Payment_Date datetime
)
GO

/*CREATE SALEPAYMENT TABLE*/
Create table SALEPAYMENT
(
SPayment_ID int Primary Key identity(1,1) Not null,
Sale_ID int references SALE(Sale_ID),
Payment_Type_ID int references PAYMENTTYPE(Payment_Type_ID),
Employee_ID int references EMPLOYEE(Employee_ID),
Client_ID int references CLIENT(Client_ID),
Payment_Amount decimal (18,2),
Payment_Date datetime
)
GO

/*CREATE TRANSACTION TABLE*/

Create table COMPLETEDTRANSACTION
(
Payment_Receipt_ID int Primary Key identity(1,1) Not null,
Payment_ID int references ORDERPAYMENT(OPayment_ID),
Payment_Receipt_Date datetime,
Payment_Receipt_Subtotal decimal (18,2),
Payment_Receipt_VAT decimal (18,2),
Payment_Receipt_Total_Amount decimal (18,2),
)
GO

/*CREATE PAYMENT RECEIPT LINE TABLE*/

Create table PAYMENTRECEIPTLINE
(
Payment_Receipt_Num int Primary Key identity(1,1) Not null,
Payment_Receipt_ID int references COMPLETEDTRANSACTION(Payment_Receipt_ID),
Payment_Receipt_Date datetime,
Receipt_Line_Amount decimal (18,2),
)
GO


/*CREATE ACCESSORY TABLE*/

Create table ACCESSORY
(
Accessory_ID int Primary Key identity(1,1) Not null,
Product_Type_ID int references PRODUCTTYPE(Product_Type_ID),
Accessory_Type varchar(100),
Brand varchar(100),
Animal_Type varchar(100)
)
GO


/*CREATE PET TABLE*/

Create table PET
(
PET_ID int Primary Key identity(1,1) Not null,
Product_Type_ID int references PRODUCTTYPE(Product_Type_ID),
Name varchar(100),
Breed varchar(100),
Date_Born datetime,
Gender varchar(20),
Colour varchar(50),
Image_Field varchar(500)
)
GO


/*CREATE FOOD TABLE*/

Create table FOOD
(
Food_ID int Primary Key identity(1,1) Not null,
Product_Type_ID int references PRODUCTTYPE(Product_Type_ID),
Name varchar(100),
Product_Specific_Description varchar(100),
Brand varchar(100),
Flavour varchar(100),
)
GO


---------------------------------------------------TEST DATA---------------------------------------------
/*INSERT INTO Title TABLE*/

insert into TITLE values('Mr. ')
insert into TITLE values('Mrs. ') 
insert into TITLE values('Miss. ')
insert into TITLE values('Prof. ')
insert into TITLE values('Dr. ')
go

/*INSERT INTO ACCESS LEVEL TABLE*/

insert into ACCESSLEVEL values ('Owner')
insert into ACCESSLEVEL values ('Employee')
go

/*INSERT INTO EMPLOYEE TABLE*/
insert into EMPLOYEE values ('Allan','Cartman','4','Male','al@tuks.co.za','0733259632','15 Park Street')
insert into EMPLOYEE values ('Elsabe','Smith','2','Female','es@tuks.co.za','0766259632','25 Park Street')
insert into EMPLOYEE values ('Lindiwe','Baloyi','3','Female','lb@tuks.co.za','0733259231','35 Park Street')
go

/*INSERT INTO CLIENT TABLE*/
insert into CLIENT values ('Dineo','Mashaba','2','dm@tuks.co.za','0836638965','18 Rebecca Street')
insert into CLIENT values ('Boity','Senzo','2','bs@tuks.co.za','0826339586','158 Park Street')
go

/*INSERT INTO SYSTEMUSER TABLE*/
insert into SYSTEMUSER values ('Allan','pass','favorite colour','blue','1','1')
go

/*INSERT INTO SUPPLIER TABLE*/
insert into SUPPLIER values ('Foods Ind', 'Ruan', 'Van Wyk','1','rwyk@tuks.co.za', '0866586677','10 Rebecca Street')
insert into SUPPLIER values ('Pettoys', 'Adriaan', 'Robertse','2','arrb@tuks.co.za', '0731234569','108 Douth Street')
go

/*INSERT INTO PAYMENT TYPE TABLE*/
insert into PAYMENTTYPE values ('Cash')
insert into PAYMENTTYPE values ('Card')
insert into PAYMENTTYPE values ('Cheque')
go

/*INSERT INTO PRODUCTTYPE TABLE*/
insert into PRODUCTTYPE values ('Pet')
insert into PRODUCTTYPE values ('Food')
insert into PRODUCTTYPE values ('Accessory')
go

/*INSERT INTO PRODUCT TABLE*/
insert into PRODUCT values ('YumYum Dog food', 'Large breed beef flavoured Dog food', '100', '10','12.00','1')
insert into PRODUCT values ('Boney Dog food', 'Medium breed pork flavoured Dog food', '200', '40','30.00','1')
insert into PRODUCT values ('Pettoy ball of yarn', 'Multicoloured ball of yarn cat toy.', '50', '10','10.00','3')
go

/*INSERT INTO DELIVERY TABLE*/
insert into DELIVERY values ('05-08-2017','167 Reen Street','12.00')
insert into DELIVERY values ('05-09-2017','104 South Street','30.00')
insert into DELIVERY values ('08-09-2017','2261 Eng Street','22.00')
go

/*INSERT INTO ORDERDETAILS TABLE*/

insert into ORDERDETAILS values('1','1','02-02-2018')
insert into ORDERDETAILS values('2','2','02-02-2018')
go

/*INSERT INTO ORDERITEM TABLE*/

insert into ORDERITEM values('1','2','1','32.00')
insert into ORDERITEM values('1','1','2','25.00')
go

/*INSERT INTO SALE TABLE*/
insert into SALE values ('1','1','2018/10/28','1')
insert into SALE values ('2','2','2018/10/02','2')
go

/*INSERT INTO SALELINE TABLE*/
insert into SALELINE values ('1','1','5')
insert into SALELINE values ('2','2','2')
go


/*INSERT INTO ORDERPAYMENT TABLE*/
insert into ORDERPAYMENT values('1','1','2','1','32.00','02-02-2018')
insert into ORDERPAYMENT values('1','2','1','2','25.00','02-02-2018')
go

/*INSERT INTO SALEPAYMENT TABLE*/
insert into SALEPAYMENT values('1','1','2','1','32.00','02-02-2018')
insert into SALEPAYMENT values('1','2','1','2','25.00','02-02-2018')
go

/*INSERT INTO COMPLETEDTRANSATION TABLE*/
insert into COMPLETEDTRANSACTION values ('1','05-08-2017','499.98','24.99','524.79')
insert into COMPLETEDTRANSACTION values ('2','05-12-2017','329.98','18.17','357.15')
go

/*INSERT INTO PAYMENT RECEIPT LINE TABLE*/
insert into PAYMENTRECEIPTLINE values ('1','2018/10/22','524.79')
insert into PAYMENTRECEIPTLINE values ('2','2018/11/15','357.15')
go

/*INSERT INTO ACCESSORY TABLE*/
insert into ACCESSORY values ('3','Collar','Jessy','Dog')
insert into ACCESSORY values ('3','Bed','Rusky','Cat')
go

/*INSERT INTO PET TABLE*/
insert into PET values ('1','Bobby', 'Cat','2016/01/20','Male','Black','abcimage')
insert into PET values ('1','Jess', 'Dog','2016/10/20','Female','Brown','abcimage')
go

/*INSERT INTO FOOD TABLE*/
insert into FOOD values ('2','JC dog food','dog food','Pedigree','Beef')
insert into FOOD values ('2','AJ cat food','cat food','Regal','Chicken')
go

ALTER DATABASE FurryFiestaDatabase SET READ_WRITE