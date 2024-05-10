create database company;
show databases;
use company;
create table EmpDetails(
ID int not null auto_increment,
Name varchar(20) not null,
Age int not null,
DoB varchar(15) not null,
primary key(ID)
);

show tables;
describe  EmpDetails; 
insert into EmpDetails(ID,Name,Age,DoB)values(null,"JVijay",22,"2001-03-6"),
(null,"Raghu",29,"1994-05-12"),(null,"Raja",30,"1993-04-21"),
(null,"Alex",22,"2001-07-20"),(null,"Hari",21,"2002-04-20"),
(null,"Elam",20,"2003-06-05"),(null,"Kajay",19,"2004-06-13"),
(null,"Raghul",19,"2004-08-21"),(null,"Naveen",19,"2004-08-29"),
(null,"Gokul",21,"2002-11-15"),(null,"Kubenthirar",25,"1998-06-05"),
(null,"Nesavaran",23,"2000-05-12"),(null,"Karan",19,"2004-03-23"),
(null,"Guna",29,"1994-11-15"),(null,"Akash",21,"2002-06-05"),
(null,"Tharan",15,"2008-12-17"),(null,"Dhoss",20,"2003-08-15"),
(null,"Dhina",17,"2006-01-25"),(null,"Arul",18,"2005-09-10"),
(null,"Nithes",17,"2006-05-11"),(null,"Ganapathy",16,"2007-10-25"),
(null,"Suriya",23,"2000-05-26");

alter table EmpDetails change DoB Date varchar(10);

update EmpDetails set name="Dheepan" where ID=13;

select*from empdetails;

delete from EmpDetails where ID=21;

select Name,Age from EmpDetails where age>=20;

select*from EmpDetails where Name='n' ;

select*from EmpDetails order by Name;

select Age, count(age) from EmpDetails group by Age
having count(Age)>1
order by  Age;


select count(age) From EmpDetails;

select sum(age) From EmpDetails;

select avg(age) From EmpDetails;

select max(age) From EmpDetails where age<=24;

select min(age)From EmpDetails;

select ucase(name),age From EmpDetails order by name;

select name,char_length(Name) from Empdetails;

select now();

select current_date();

select datediff(current_date(),"2025-01-01")as days;

select date_format(curdate(),"%d-%m-%Y")formatDate;

select current_date()startdate,
 adddate(curdate(),interval 1 day)  "one day later" ,
adddate(curdate(),interval 1 week)  "one week later",
adddate(curdate(),interval 1 month) "one month later",
adddate(curdate(),interval 1 year)  "one year later";
