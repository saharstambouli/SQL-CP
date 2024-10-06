
-- Customer ( Customer_id,customer_Name,Customer_tel)
-- Product( Product_id,product_Name,Price)
-- Orders(#Customer_id,#Product_id,quantity,total_amount)




CREATE  TABLE  Customer  ( 
customerID VARCHAR(20)  PRIMARY KEY,

Customer _name    VARCHAR(20) NOT NULL,

	Customer_Tel NUMBER ,



),


CREATE TABLE Product  (

ProductID VARCHAR(20)  PRIMARY KEY,

Product_name    VARCHAR(20) NOT NULL,

Price    NUMBER  CHECK (Price>0) ,

);


CREATE TABLE Orders  (

ProductID VARCHAR(20)  ,
customerID VARCHAR(20)  ,

Quantity   NUMBER  ,
Total amount  Number ,  
FOREIGN KEY (customerID) REFERENCES Customer(customerID),
FOREIGN KEY (ProductID) REFERENCES Product(ProductID)

);


-- Add a column Category (VARCHAR2(20)) to the PRODUCT table. 

ALTER TABLE Product ADD Category VARCHAR2(20);

-- Add a column OrderDate (DATE)  to the ORDERS table which have SYSDATE as a default value.


ALTER TABLE Orders ADD OrderDate DATE DEFAULT SYSDATE;

