USE MASTER
GO

IF DB_ID('QL_BANHANG') IS NOT NULL
DROP DATABASE QL_BANHANG
GO

CREATE DATABASE QL_BANHANG
GO

USE QL_BANHANG
GO

CREATE TABLE PRODUCTS
(
    PRODUCT_ID NVARCHAR(15) NOT NULL PRIMARY KEY,
    PRODUCT_NAME NVARCHAR(100),
    PRICE FLOAT,
    QUANTITY_AVAILABLE INT,
    DESCRIPT NVARCHAR,
)

CREATE TABLE CUSTOMERS
(
    CUSTOMER_ID NVARCHAR(15) NOT NULL PRIMARY KEY,
    FULLNAME NVARCHAR(100),
    DOB DATE,
    GENDER VARCHAR(10),
    ADDR NVARCHAR,
    EMAIL NVARCHAR(100),
    PHONE NVARCHAR,
    CONSTRAINT CheckGender CHECK (GENDER IN ('Nam', 'Nữ'))
)

CREATE TABLE ORDERS
(
    ORDER_ID NVARCHAR(15) NOT NULL PRIMARY KEY,
    CUSTOMER_ID NVARCHAR(15) NOT NULL,
    ORDER_DATE DATE,
    ORDER_DETAIL NVARCHAR,
)

ALTER TABLE ORDERS
ADD CONSTRAINT FK_ORDERS_CUSTOMER FOREIGN KEY(CUSTOMER_ID) REFERENCES CUSTOMER(CUSTOMER_ID)

CREATE TABLE PAYMENTS
(
    PAYMENT_ID NVARCHAR(15) NOT NULL PRIMARY KEY,
    ORDER_ID NVARCHAR(15) NOT NULL,
    PAYMENT_DATE DATE,
    PAYMENT_METHOD NVARCHAR(15),
    TOTAL_AMOUNT FLOAT
)

ALTER TABLE PAYMENT_DATE
ADD CONSTRAINT FK_PAYMENT_ORDERS FOREIGN KEY (ORDER_ID) REFERENCES ORDERS(ORDER_ID)

CREATE TABLE ACCOUNTS
(
    ACCOUNT_ID NVARCHAR(15) NOT NULL PRIMARY KEY,
    CUSTOMER_ID NVARCHAR(15),
    PASSWORDS NVARCHAR(15),
)

ALTER TABLE ACCOUNTS
ADD CONSTRAINT FK_ACCOUNTS_CUSTOMERS FOREIGN KEY (CUSTOMER_ID) REFERENCES CUSTOMER(CUSTOMER_ID)