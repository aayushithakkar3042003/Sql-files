create table Members (
 Memberid int auto_increment primary key,
 Firstname varchar (255) not null,
 lastname varchar(255) unique,
 membershipdate date );