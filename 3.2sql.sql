create Database Librarydbm;
show databases;
use librarydbm;
create Table books (
bookid int auto_increment primary key,
title varchar (255) Not null,
author varchar (255) not null ,
isbn varchar(20) unique,
publishedyear Year
);
create table members (
memberid int auto_increment primary key,
firstname varchar (255) not null,
lastname varchar(255) not null,
email varchar(255) unique,
membersDate Date 
);
create table transactions (
transactionid int auto_increment primary key,
memberid int,
bookid int,
transactionDate date,
foreign key (memberid) references members (memberid),
foreign key (bookid) references Books (bookid)
);
create view activeloans as 
select 
 transactionid,
 memberid,
 bookid,
 transactiondate,
 case 
 when returndate is Null then 'not returned'
 else returndate
 end as returnstatus
 from transactions;
 select * from activeloans;
 create index idx_title on books (title);
 show index from books;
 create schema inventory;
 create schema membersmanagement;
 
