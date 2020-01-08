
--DDL Command
--database creation
create database Infotech2020;

use Infotech2020;

--Table creation
create table studentInfo(
RegNo int primary key,
Name varchar(50),
FName varchar(50)
)

alter table studentInfo drop column FName;

--DML command
select * from studentInfo;

insert into studentInfo values(101,'shivam')
insert into studentInfo values(102,'Sanu')
insert into studentInfo values(103,'Abhishek')
insert into studentInfo values(104,'Renu')
insert into studentInfo values(105,'Anil')

select * from studentInfo;

update studentInfo set Name='Manish' where Name='Anil'

delete from studentInfo where RegNo=102;


select Name from studentInfo;

select COUNT(Name) from studentInfo;