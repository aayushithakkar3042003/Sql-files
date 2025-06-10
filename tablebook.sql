create Table Book (
   Bookid Int auto_increment primary key,
   title varchar(255) Not null,
   author varchar(20) unique,
   publishyear year
   );
    