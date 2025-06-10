CREATE DATABASE Bookstoredbm;
use Bookstoredbm;
CREATE TABLE Denormalized_Books(
Book_id Int,
Book_title VARCHAR (255),
Author_name varchar (255),
publisher_name varchar(255),
Publisher_address varchar(255),
Category Varchar(100),
Price Decimal (10,2)
);
Insert  Into Denormalized_Books (Book_id, Book_title ,Author_name,publisher_name , publisher_address , category , price)
values 
(1, 'database design ' , ' aryan gopal ', 'textbooks inc', '123 techst', 'education',50),
(2,'web devlopment ' ,'jyoti chirag','codebooks','456code','programming',40),
(3, 'databasedesign', 'aryangopal','textbooks inc','123 tech st' , 'education',50);
use bookstoredbm;
create table Books_inf(
book_id Int,
Book_title VARCHAR (255),
Author_name varchar (255),
publisher_name varchar(255),
Publisher_address varchar(255),
Category Varchar(100),
Price Decimal (10,2),
primary key (book_id,Author_name)
);
use bookstoredbm;
insert into books_inf (book_id , book_title , author_name , publisher_name , publisher_address , category , price)
values
(1, 'database design ' , ' aryan gopal ', 'textbooks inc', '123 techst', 'education',50),
(2,'web devlopment ' ,'jyoti chirag','codebooks','456code','programming',40),
(3, 'databasedesign', 'aryangopal','textbooks inc','123 tech st' , 'education',50); 
use Bookstoredbm;
select * from Books_inf;
use bookstoredbm;
show tables ;
create table books_2nf(
book_id Int,
Book_title VARCHAR (255),
Category Varchar(100),
Price Decimal (10,2)
);
insert into books_2nf (book_id , book_title , category , price)

values
(1, 'database design ' ,  'education',50),
(2,'web devlopment ','programming',40);

use bookstoredbm;
select *from Books_2nf;
use bookstoredbm;
create table authors_2nf(
author_id int auto_increment primary key,
author_name varchar (255),
Book_id int,
foreign key (book_id) References Books_2nf (book_id)
);
show tables;
create table books_2nf(
book_id int primary key,
book_title varchar(255),
category varchar (100),
price decimal (10,2)
);
insert into books_2nf (book
 