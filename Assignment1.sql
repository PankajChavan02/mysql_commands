create database assignment;
use assignment;

create table student (sno integer, s_name char(30),s_class char(10),s_addr char(50), primary key(sno));

create table teacher (tno integer, t_name char(30),t_qualification char(15),experience integer,primary key(tno));

drop table teacher;
drop table student;


insert into student (s_name,s_class,s_addr) values(std1,5A,pune),(std2,5A,pune),(std3,5B,pune),(std4,5B,thane);
insert into teacher (t_name,t_qualification,experience) values(tech1,BSC,10),(tech,MSC,10),(tech3,BE,8),(tech4,BA,8);