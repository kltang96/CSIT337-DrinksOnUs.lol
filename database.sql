CREATE DATABASE GROUP_PROJECT337;
USE GROUP_PROJECT337;

CREATE TABLE customer(
  ID varchar(10) NOT NULL UNIQUE,
  email varchar(100) not null UNIQUE PRIMARY KEY,
  password varchar(30) not null, 
  Fname VARCHAR(30) NOT NULL,
  Lname VARCHAR(30) NOT NULL,
  phone VARCHAR(12) NOT NULL,
  gender ENUM('M', 'F', 'O'), 
  DoB DATE NOT NULL,
  address varchar(300) not null, 
  cart VARCHAR(30) not null,
);

CREATE TABLE employee(
  ID varchar(10) NOT NULL UNIQUE,
  email varchar(100) not null UNIQUE PRIMARY KEY,
  password varchar(30) not null, 
  Fname VARCHAR(30) NOT NULL,
  Lname VARCHAR(30) NOT NULL,
  phone VARCHAR(12) NOT NULL,
  gender ENUM('M', 'F', 'O'), 
  DoB DATE NOT NULL,
  address varchar(300) not null, 
  SSN varchar(9) NOT NULL, 
  role ENUM('admin', 'employee', 'observer') not null,
);

CREATE TABLE PRODUCTS(
productid INT not NULL UNIQUE PRIMARY KEY,
name VARCHAR(30) NOT NULL,
brand VARCHAR(30) NOT NULL,
description text(300) NOT NULL,
CASE_COUNT CHAR(2) NOT NULL,
CASE_PRICE FLOAT(3) NOT NULL);

CREATE TABLE ORDER(
ORDER_ID INT NOT NULL PRIMARY KEY,
VEND_NUMBER INT  NOT NULL UNIQUE,
FOREIGN KEY (VEND_NUMBER) REFERENCES PRODUCTS(VEND_NUMBER),
TOTAL_COST FLOAT(2),
ORDER_STATUS VARCHAR(30),
ORDER_DATE TIMESTAMP,
DELIEVERY_DATE DATE );

