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


