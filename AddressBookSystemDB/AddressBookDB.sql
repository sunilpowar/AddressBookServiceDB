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




