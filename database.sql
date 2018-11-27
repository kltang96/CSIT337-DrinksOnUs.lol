CREATE DATABASE GROUP_PROJECT337;
USE GROUP_PROJECT337;

CREATE TABLE CUSTOMERS(
  customerID varchar(10) NOT NULL PRIMARY KEY,
  email varchar(100) not null UNIQUE,
  password varchar(30) not null, 
  Fname VARCHAR(30) NOT NULL,
  Lname VARCHAR(30) NOT NULL,
  phone VARCHAR(12) NOT NULL,
  gender ENUM('M', 'F', 'O'), 
  DoB DATE,
  address varchar(300) not null, 
  cart VARCHAR(30) not null
);

CREATE TABLE EMPLOYEES(
  employeeID varchar(10) NOT NULL PRIMARY KEY,
  email varchar(100) not null UNIQUE,
  password varchar(30) not null, 
  Fname VARCHAR(30) NOT NULL,
  Lname VARCHAR(30) NOT NULL,
  phone VARCHAR(12) NOT NULL,
  gender ENUM('M', 'F', 'O'), 
  DoB DATE,
  address varchar(300) not null, 
  SSN varchar(9) NOT NULL, 
  FOREIGN KEY (role) REFERENCES ROLES(role)
);

CREATE TABLE ROLES(
  role VARCHAR(30) NOT NULL,
  ch_employee ENUM('No', 'Yes'), 
  ch_product ENUM('No', 'Yes')
);

CREATE TABLE PRODUCTS(
  productid INT not NULL PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(30) NOT NULL,
  brand VARCHAR(30) NOT NULL,
  description text(300) NOT NULL,
  picture VARCHAR(100) NOT NULL,
  price FLOAT(24) NOT NULL,
  type ENUM('water', 'juice', 'soda', 'alcoholic', 'other'), 
  quantity INT not NULL
);

CREATE TABLE ORDERS(
  orderID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  FOREIGN KEY (customerid) REFERENCES customers(customerid),
  cost FLOAT(24),
  status ENUM('pending', 'fulfilled', 'special'),
  orderdate DATE,
  fulfilldate DATE,
  request VARCHAR(300) NOT NULL
);

