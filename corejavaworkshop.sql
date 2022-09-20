create database product_management_system;
use product_management_system;
create table product(id integer primary key auto_increment,name varchar(30),price double,category varchar(30));

desc product;
select * from product;

select * from product where name like '%p%';

select * from product where price between 100.00 and 300.00;


create table user(user_id integer primary key auto_increment,user_name varchar(30),password varchar(30),type varchar(20));
desc user;
insert into user(user_name,password,type) values('admin','admin','A');
insert into user(user_name,password,type) values('user','user','U');
select * from user where user_name='admin' and password = 'admin';
select * from user;