CREATE DATABASE SALESDB;
USE SALESDB;
CREATE TABLE SALES(
SALES_ID INT PRIMARY KEY,
PRODUCT_NAME VARCHAR (100),
CUSTOMER_NAME VARCHAR(100),
QUANTITY INT,
PRICE_PER_UNIT DECIMAL (10,2),
SALE_DATE DATE 
);
INSERT INTO SALES (SALES_ID , PRODUCT_NAME , CUSTOMER_NAME , QUANTITY , PRICE_PER_UNIT ,SALE_DATE)
VALUES 
(1,'LAPTOP' ,'ALISHA' , 2, 750.50 ,'2024-01-01'),
(2, 'PHONE' ,'BELLA' , 3, 300.90 , '2024-01-05'),
(3, 'TABEL' , 'CHIRAG' , 4 ,450.75 , '2024-02-02'),
(4, 'MONITOR', 'DEEPIKA' ,1, 200.00 , '2024-01-15');
SELECT count(*) AS TOTAL_SALES FROM SALES;
 select sum(quantity + price_per_unit) as total_revenue , avg(quantity + price_per_unit) as avg_revenue from sales;
 select max(price_per_unit)as highest_price , min(price_per_unit) as lowest_price from sales;
 select concat(product_name , 'sold to' , customer_name ) as sale_description from sales;
 select upper(product_name) as product_uppercase , lower(product_name) as product_lowercase from sales;
 select round(avg(price_per_unit)) as avg_price_rounded from sales;
 select now() as 'current_date_time' ,curdate() as 'current_date ';
 select * from sales
 where sales_id =1;
 select adddate(sale_date , 30 ) as new_date from sales where sales_id = 1;
 select cast(quantity as char) as quantity_as_string from  sales where sale_id = 3;
 select convert(price_per_unit , char) as price_as_string from sales where sales_id = 4;
 
 