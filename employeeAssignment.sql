use newDatabase;
show tables;
create table employee(employee_id integer primary key,name varchar(30),designation varchar(20), dob date);
desc employee;

select * from employee;
delete from employee;