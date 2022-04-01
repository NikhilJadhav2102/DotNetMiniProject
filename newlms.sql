
-------------------------------------------
--  queries
-------------------------------------------

create database Learner_Mgmt_Sys;
use Learner_Mgmt_Sys;

--1995-09-13
--1994-02-15
--9969817060

insert into users(password) values ('123345345');

select * from users
select * from admin
select * from course
select * from book
select * from role
select * from subject

delete from users where id = 25;



create table users (
id int identity(1,1) primary key,
name varchar(50) not null,
contact bigint not null,
email varchar(50) not null unique, -- validation for duplicates
password varchar(20) not null,
dob date,
location varchar(20),
role varchar(20)not null,
subject varchar(20), 
courseName varchar(20) 
);


create table admin (
id int identity(1,1) primary key,
name varchar(20) not null,
contact bigint not null,
email varchar(20) not null unique, -- validation for duplicates
password varchar(20) not null,
);



create table course (
Id int identity(1,1) primary key,
Name varchar(20) not null,
trainerName varchar(20) not null,
fees bigint,
duration varchar(20),
description varchar(200)
);


--create table Course(
--courseId int primary key identity(1,1),
--courseName varchar(40) not null,
--numberOfStudent int,
--courseFees int,
--duration varchar(20)
--)


create table subject(
subjectId int primary key identity(1,1),
subjectName varchar(40) not null,
courseID int not null,
Constraint foreignKey foreign key(courseID) references course(Id)
);

drop table subject
drop table book

create table Book(
bookId int primary key identity(1,1),
bookName varchar(40) not null,
subjectId int not null,
constraint fk3 foreign key (subjectId) references subject(subjectId)
);

create table role (
Id int primary key identity(1,1),
role varchar(50) not null
);

select * from users
select * from admin
select * from course
select * from book
select * from role
select * from subject
-- id int identity(1,1) primary key,
--name varchar(20) not null,
--contact int not null,
--email varchar(20) not null,
--password varchar(20) not null,
--age int,
--location varchar(20),
--role varchar(20)not null,
--stream varchar(20), 
--courseName varchar(20)

--insert into users values ();
--insert into admin values ();
--insert into course values ();
--insert into book values ();
--insert into role values ();
insert into subject values ('physics',2);