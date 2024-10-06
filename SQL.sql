
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




INSERT INTO Customer VALUES ('C01','Ali', 71321009);
INSERT INTO Customer VALUES ('C02','ASMA', 77345823);

INSERT INTO Product VALUES ('P01','Samsung Galaxy S20',3299, 'Smartphone' );
INSERT INTO Product VALUES ('P02','Asus Notebook', 4599,'PC' );


INSERT INTO Orders (customerID, ProductID, Quantity, Total_amount) VALUES ('C01', 'P02', 2, 9198);
INSERT INTO Orders (customerID, ProductID, OrderDate, Quantity, Total_amount) VALUES ('C02', 'P01', TO_DATE('28-MAY-2020', 'DD-MON-YYYY'), 1, 3299);
