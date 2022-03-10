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




