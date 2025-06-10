create database hospitaldbm;
use hospitaldbm;
create table doctors(
doctor_id int primary key,
first_name varchar (50),
last_name varchar (50),
specialization varchar (100)
);
create table patients(
patient_id int primary key,
first_name varchar(50),
last_name varchar(50),
age int,
doctor_id int
);
insert into doctors (doctor_id , first_name , last_name, specialization)
values 
(1, 'john','peter','cardiology'),
(2, 'piyush' , 'syas','orthopedics'),
(3, 'rakesh' , 'sha','numerology');
insert into patients (patient_id , first_name , last_name , age, doctor_id)
values
(
101 , 'ameya' , 'Sreekanth' , 30 ,1),
(102 , 'taniya' , 'jane' ,45 , 2),
(103 , 'rakesh' , 'sharma', 50,null);
select 
patients.first_name as patient_name,
doctors.first_name as doctor_name,
doctors.specialization
from patients
inner join doctors
on patients.doctor_id = doctors.doctor_id;
select 
patients.first_name as patient_name,
doctors.first_name as doctors_name,
doctors.specialization
from patients
left join doctors
on patients.docotr_id = doctors.doctor_id
union 
select 
patients.first_name as patient_name,
doctors.first_name as doctor_name,
doctors specialization
from patients
right join doctors
on patients.doctor_id = doctors.doctor_id;

select 
patients.first_name as patient_name,
doctors.first_name as doctor_name
from patients
cross join doctors;

alter table patients add department varchar(50);
update patients
set department = 'cardiology'
where doctor_id = 1;
update patients
set department = 'orthopodics'
where doctor_id = 2;
update patients
set department = 'genral' ;

select 
	p1.first_name as patient1_name ,
	p2.first_name as Patient2_name,
	p1.department
from patients p1
join patients p2
on p1.department = p2.department and  p1.patient_id != p2.patient_id;
select* from patients;

