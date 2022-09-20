use newdatabase;

select * from student;


select * from student where id in (3,4,5);

select * from student where id between 2 and 6;

alter table student add column(marks integer);

update student set marks=45 where id=4;

update student set marks=75 where id=5;

update student set marks=35 where id=6;

update student set marks=51 where id=7;

create index idx_name on student(name);

alter table student drop index idx_name;

show index from student;

select curdate();

select curtime();

alter table student add column(dob date);

update student set dob='2001-08-12' where id=1;
update student set dob='2001-08-12' where id=4;
update student set dob='2001-03-28' where id=3;
update student set dob='2001-05-14' where id=5;
update student set dob=null where id=6;
update student set dob='2001-07-12' where id=7;


select name,dob,timestampdiff(year,dob,curdate()) as Age from student;


select name,dob from student where month(dob)=8;


select name , if(marks>40,'Pass','Fail') as status from student;

select if(null>35,'p','f');


select ifnull(1,0);

select ifnull(' ',0);

select * from student;
select ifnull(1,0);


select name,if(marks>40,'Pass','Fail') AS result,ifnull(result,'on hold') from student;



create table course(course_name varchar(30),student_id integer, foreign key(student_id) references student(id));

select * from course;

insert into course values('maths','1'),('maths','7'),('maths','5'),('chem','3'),('physics','4'),('chem','6');


desc course;


select * from student inner join course on id=student_id;

alter table course change [column] student_id id;

select * from student inner join course on id=student_id order by marks desc limit 1 ;

select @max_marks:=max(marks), @min_marks:=min(marks) from student;

select * from student where marks=@max_marks or marks=@min_marks;


delimiter //

create procedure get_name(in st_id int(11),out st_name varchar(30))
begin
  select name into st_name from student where id=st_id;
end
//
delimiter ;

call get_name(5,@name);
select @name;



