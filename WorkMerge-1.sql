-- Mohamed Al Balushi, COMP440, Final Project, Part 2/2



-- CREATING TABLES: 
CREATE TABLE Product (
Product_ID INT PRIMARY KEY IDENTITY(1,1), Product_Title varchar(100) NULL, Product_Description TEXT NULL,
);


CREATE TABLE  Release ( Release_ID INT PRIMARY KEY IDENTITY(1,1), 
Product_ID INT FOREIGN KEY REFERENCES Product(Product_ID) NULL, Release_Number VARCHAR (50) NOT NULL, Release_Date DATE NULL,
);


CREATE TABLE Version (
Version_ID INT PRIMARY KEY IDENTITY(1,1) , Release_ID INT FOREIGN KEY REFERENCES Release(Release_ID) NULL, Version_Number VARCHAR (50),
);



CREATE TABLE WorkItem (
WorkItem_ID INT PRIMARY KEY IDENTITY(1,1),  
WorkItem_Parent INT FOREIGN KEY REFERENCES WorkItem(WorkItem_ID) NULL, 
Version_ID INT FOREIGN KEY REFERENCES Version(Version_ID) NULL,
WorkItem_Type varchar(100) NULL,
WorkItem_Title varchar(100) NULL,
WorkItem_Description TEXT NULL,
WorkItem_Activity VARCHAR(100) NULL,
WorkItem_CreatedDate DATE NULL,
WorkItem_SystemOfOrigin VARCHAR (100) NULL,
WorkItem_Creator VARCHAR(100) NULL,
WorkItem_RecordedDate DATE NULL,
);


-- Combing Data

INSERT Product (Product_Title, Product_Description)
VALUES ('BestProduct', 'Best Product description....');

SELECT * FROM Product

INSERT Release(Release_Number, Release_Date)
SELECT DISTINCT release_number,release_date FROM TestingData WHERE release_date is not null;

UPDATE Release
SET Product_ID = 1

SELECT * FROM Release;

INSERT Version (Version_Number)
SELECT DISTINCT software_Version FROM TestingData;

UPDATE Version
SET Release_ID = 1
WHERE Version_ID <= 2;

UPDATE Version
SET Release_ID = 2
WHERE Version_ID >= 3;

SELECT * FROM Version;

INSERT WorkItem (WorkItem_ID, WorkItem_Type, WorkItem_Parent, WorkItem_Title, WorkItem_Description, WorkItem_Activity, WorkItem_CreatedDate,WorkItem_SystemOfOrigin, WorkItem_Creator,WorkItem_RecordedDate)
SELECT DISTINCT ID,Work_Item_Type,Belongs_to,Title, Description,Activity,created_date,System_of_Origin,Created_Reported_by,RecordedDate FROM TestingData;


UPDATE WorkItem
SET Version_ID = 1
WHERE WorkItem_ID < 18

UPDATE WorkItem
SET Version_ID = 2
WHERE WorkItem_ID >= 27 and WorkItem_ID < 257

UPDATE WorkItem
SET Version_ID = 3
WHERE WorkItem_ID >= 259

SELECT * FROM WorkItem;


CREATE PROCEDURE `NovemberSummary`(IN `branch` VARCHAR(60), IN `year` INT) NOT 
DETERMINISTIC CONTAINS SQL SQL SECURITY DEFINER 
BEGIN
SELECT 
   ( select sum(sales.amount) from sales 
     where month (sales.date)= 11 and sales.branch = branch ) as Sales ,
   ( select sum(expenses.amount) from expenses 
     where month(expenses.date)= 11 and expenses.branch = branch ) as Expenses 
   ;
END