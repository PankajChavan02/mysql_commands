use newdatabase;

drop table employees;

create table employees (
employee_id int primary key auto_increment,
employee_name varchar(30) not null,
joining_date date,
salary double
);


insert into employees values(default,'abc','2021-08-11',5000.00);
insert into employees values(default,'def','2021-08-14',8000.00);
insert into employees values(default,'ghi','2021-08-15',9000.00);
insert into employees values(default,'jkl','2021-08-17',3000.00);

select * from employees;