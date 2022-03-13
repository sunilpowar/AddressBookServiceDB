--Welcome To The AddressBook Service DataBase--

--#UC1 Create AddressBook Service Database
CREATE DATABASE AddressBook_ServiceDB;
USE AddressBook_ServiceDB;

--#UC2 Create AddressBook Table
CREATE TABLE AddressBook_Table
(
FirstName varchar(50),
LastName varchar(50),
Address varchar(100),
City varchar(20),
State varchar (20),
Zip bigint,
PhoneNumber bigint,
Email varchar(100)
);
SELECT * FROM AddressBook_Table;

--#UC3 Inserting Value Into The AddressBook Table
INSERT INTO AddressBook_Table VALUES('Sourabh', 'Powar', 'Chikhali', 'Kolhapur', 'Maharashtra', 416235,9970965164, 'sourabhpowarsp8468@gamil.com'),
						      ('Ajim', 'Maner', 'Kini', 'Hatkanangale', 'Maharashtra', 416246, 8946512348, 'ajim@gamil.com'),	
					       	('Snehal', 'Awate', 'Mamadapur', 'Belgaum', 'Karnataka', 591238,9764581346, 'snehal@gmail.com'),	
					     	('Sanika', 'Patil', 'Jatrat', 'Nipani', 'Karnataka',539237, 9764151348, 'sanika@gmail.com'),	
					    	('Anil', 'Matakar', 'Gadhinglaj', 'Kolhapur', 'Maharashtra', 416784, 9764513854, 'anil@gmail.com');
SELECT * FROM AddressBook_Table;

--#UC4 Edit Existing AddressBook Table Using UPDATE
UPDATE AddressBook_Table SET Email='sourabhpowar@gmail.com' WHERE FirstName='Sourabh';
UPDATE AddressBook_Table SET PhoneNumber=9764513856 WHERE FirstName='Ajim';
SELECT * FROM AddressBook_Table;

--#UC5 Delete Existing Contact From Table using DELETE
DELETE FROM AddressBook_Table WHERE FirstName='Ajim' And LastName = 'Maner';
SELECT * FROM AddressBook_Table;

--#UC6 Retrieve Person Record From Table By City Or State from Address Book
SELECT * FROM AddressBook_Table WHERE City='Nipani' Or State='Karnataka';

--#UC7 Ability To Get The Size Of AddressBook By City And State Using Count
SELECT COUNT(*) AS COUNT,State,City FROM AddressBook_Table GROUP BY State,City;

--#UC8 Ability to Retrive Sorted Persons Records By City
SELECT * FROM AddressBook_Table WHERE City = 'Kolhapur' ORDER BY FirstName;

--#UC9 Identify each Address book with Name and Type 
ALTER TABLE AddressBook_Table Add AddressBookName varchar(100), AddressBookType varchar(100);

UPDATE AddressBook_Table SET AddressBookName='FreindsAddressBook',AddressBookType='Freinds' WHERE FirstName ='Sourabh' Or FirstName='Sanika';
UPDATE AddressBook_Table SET AddressBookName='FamilyAddressBook',AddressBookType='Family' WHERE FirstName ='Snehal';
UPDATE AddressBook_Table SET AddressBookName='ProfesionAddressBook',AddressBookType='Profession' WHERE FirstName ='Anil';
SELECT * FROM AddressBook_Table;

--#UC10 Get number of contact persons Count by type
SELECT COUNT(AddressBookType) AS TypeCount, AddressBookType FROM AddressBook_Table GROUP BY AddressBookType;


--#UC11 Add to both Friend nad Family
INSERT INTO AddressBook_Table VALUES ('Snehal', 'Awate', 'Mamadapur', 'Belgaum', 'Karnataka', 591238, 9764581346, 'snehal@gmail.com','FriendsAddressBook','Friends');
SELECT * FROM AddressBook_Table;

--#UC12 Creating Tables Using ER Diagram

--Creating Address_Book Table--
CREATE TABLE Address_Book(
	AddressBookId INT IDENTITY(1,1) PRIMARY KEY,
	AddressBookName VARCHAR(50)
);

--Creating Persons_Details Table--
CREATE TABLE Persons_Details(
	PersonId INT IDENTITY(1,1) PRIMARY KEY,
	AddressBookId INT, 
	FirstName VARCHAR(50),
	LastName VARCHAR(50),
	ADDRESS VARCHAR(255),
	City VARCHAR(50),
	StateName VARCHAR(50),
	ZipCode INT,
	PhoneNum BIGINT,
	EmailId VARCHAR(50),
	FOREIGN KEY(AddressBookId) REFERENCES Address_Book(AddressBookId)
);
 

--Creating Person_Types Table
CREATE TABLE Person_Types(
	PersonTypeId INT IDENTITY(1,1) PRIMARY KEY,
	PersonType VARCHAR(50),
);

--Creating Persons_Details_Type Table
CREATE TABLE Persons_Details_Type(
	PersonId INT FOREIGN KEY REFERENCES Persons_Details(PersonId),
	PersonTypeId INT FOREIGN KEY REFERENCES Person_Types(PersonTypeId)
);
SELECT * FROM Persons_Details_Type;

--Inserting Values Into The New Table Structure

--Inserting Values Into AddressBook Table

INSERT INTO Address_Book VALUES ('Home'),('Office'),('College');
SELECT * FROM Address_Book;

--Inserting Values Into PersonTypes Table
INSERT INTO Person_Types VALUES ('Family'),('Profession'),('Freinds');
SELECT * FROM Person_Types;

--Inserting Values Into PersonsDetails Table
INSERT INTO Persons_Details VALUES(1,'Sourabh', 'Powar', 'Chikhali', 'Kolhapur', 'Maharashtra', 416235,9970965164, 'sourabhpowarsp8468@gamil.com'),
						      (2,'Ajim', 'Maner', 'Kini', 'Hatkanangale', 'Maharashtra', 416246, 8946512348, 'ajim@gamil.com'),	
					       	(3,'Snehal', 'Awate', 'Mamadapur', 'Belgaum', 'Karnataka', 591238,9764581346, 'snehal@gmail.com'),	
					     	(1,'Sanika', 'Patil', 'Jatrat', 'Nipani', 'Karnataka',539237, 9764151348, 'sanika@gmail.com'),	
					    	(3,'Anil', 'Matakar', 'Gadhinglaj', 'Kolhapur', 'Maharashtra', 416784, 9764513854, 'anil@gmail.com'),
							(2,'Harish', 'Nulle', 'Chikhali', 'Kolhapur', 'Maharashtra', 416235, 8956414747, 'harish@gmail.com'),
							(1,'Aniket', 'More', 'Daate', 'Chandgad', 'Maharashtra', 432467, 9564762455, 'moreaniket@gmail.com'),
							(2,'Priyanka', 'Kumbhar', 'Vathar', 'Kolhapur', 'Maharshtra', 416201, 6451345784, 'piya@gmail.com'),
							(3, 'Avinash', 'Chungadi', 'Vasai', 'Mumbai', 'Maharashtra', 154975, 9754615877, 'Avichungadi@gmail.com');

SELECT * FROM Persons_Details;

--Inserting Values Into PersonsDetailsType Table
INSERT INTO Persons_Details_Type VALUES(13,1),(14,3),(15,3),(16,3),(17,2),(18,2),(19,2),(20,1),(21,1);
SELECT * FROM Persons_Details_Type;





