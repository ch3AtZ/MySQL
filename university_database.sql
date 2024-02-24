-- Active: 1705078993832@@127.0.0.1@3306@srm
show databases;
create database srm;
use srm;
create table student(regno int(10) not null primary key , student_first_name varchar(20) not null , student_last_name varchar(20) not null);
insert into student values(00001,"dhruv","bharara");
insert into student(regno,student_first_name,student_last_name) values(00002,'vraj','shah'),(00003,'priteh','panda');
update student set student_first_name = 'pritesh' where regno = 00003;
alter table student add column course_id varchar(10);
select * from student;
alter table student drop column course_id;
alter table student add column course_id varchar(10) not null;
alter table student modify column course_id varchar(20);
update student set course_id = 'cse w/s bct' where regno = 00001 and 00003;
select * from student; 
update student set course_id = 'cse w/s bct' where regno = 00003;
update student set course_id = 'cse w/s ai ml ' where regno = 00002;

create table course_details(course_id int(10) not null primary key , course_name varchar(20) not null , credits int(4) not null , subject_id int(10) not null);
describe course_details;

alter table course_details drop course_id;
alter table course_details add column course_id varchar(20) not null primary key;
alter table course_details modify column course_name varchar(100) not null;



insert into course_details values('Computer Science Engineering with specialization in Blockchain Technology' ,  160 , 0 , 'cse w/s bct'),
('Computer Science Engineering with specialization in Artificial Intelligence and Machine Learning' , 160 , 0,'cse w/s ai ml' );

select * from course_details;

alter table course_details modify subject_id varchar(20) not null;

update course_details set subject_id = 'CSE0001' where course_id = 'cse w/s bct';
update course_details set subject_id = 'CSE0002' where course_id = 'cse w/s ai ml';

alter table course_details add column course_fee int(10) not null;
update course_details set course_fee = 450000 where course_id = 'cse w/s bct';

select * from course_details;

update course_details set course_fee = 450000 where course_id = 'cse w/s ai ml';

create table subject_details(
subject_id varchar(20) not null primary key , subject_name varchar(60) not null , subject_code int(10) not null , subject_credits int(2) not null
);

describe subject_details;

insert into subject_details values ('CSE0001' , 'Distributed Ledger Technology' , 0 , 3) , ('CSE0002' , 'Deep Learning' , 0 , 3);

select * from subject_details; 

alter table subject_details modify subject_code varchar(20) not null;

update subject_details set subject_code = '18CSE100J' where subject_id = 'CSE0001';
update subject_details set subject_code = '18CSE200J' where subject_id = 'CSE0002';

create table faculty_detail(faculty_id int(10) not null primary key , faculty_first_name varchar(20) not null, faculty_last_name varchar(20) not null , 
department_id varchar(20) not null , subject_code varchar(20) not null , faculty_salary int(20) not null , designation varchar(20) not null );

describe faculty_detail;

commit;

insert into faculty_detail values ( 01 , 'numbu' , 'babu' , 'dsbs' , '1434' , 200000 , 'associate professor');

SELECT * from faculty_detail;

insert into student(regno,student_first_name,student_last_name) values(00004,'advaith','hanumanchi'),(00005,'manas','raval') , 
(00006,'arnav','shukla'),(00007,'subhashree','choudhary'),(00008,'bhargav','singh'),(00009,'sarthak','singh'),(00010,'abhiram','rongali'),(00011,'shivansh','chaitanya'),
(00012,'durgesh','singh'),(00013,'lakshay','malik'),(00014,'sanidhya','sarda'),(00015,'gorema','bheeju'),(00016,'vidyut','jamal'),(00017,'akshay','thamban'),
(00018,'asher','manoj'),(00019,'raghul','sarkar'),(00020,'aditya','singh'),(00021,'yash','dagar'),(00022,'kush','shakeel'),(00023,'aryan','sethi'),(00024,'aryan','bisht'),
(00048,'aryan','singh'),(00025,'harshit','kamboj'),(00027,'srikanth','tiwari'),(00028,'dheeraj','tex'),(00029,'yash','wardhan'),(00030,'ankith','kumar'),(00031,'premansh','chanderiya'),
(00032,'vanshika','singh'),(00033,'trisha','thakur'),(00034,'nah','meh'),(00035,'prachi','tiwari'),(00036,'deeksha','kajbaje'),(00037,'nevadhano','kaur'),(00038,'veer','singh'),
(00039,'neera','singh'),(00040,'meera','sanhi'),(00041,'tiya','sharma'),(00042,'aakash','singh'),(00043,'sarthak','singh'),(00044,'vishesh','kumar'),(00045,'naman','rawat'),
(00046,'mavav','bhasin'),(00047,'sonakshi','arora');

select * from student;

update student set course_id = 'cse w/s bct ' where course_id is NULL;

select count(*) FROM student;

SELECT * from student where student_last_name = 'singh'

#final checking of the program ADD


SELECT * from faculty_detail;

UPDATE student  SET  course_id = 'cse w/s ai bct' WHERE course_id is NULL ;

SELECT * FROM course_details;

INSERT INTO course_details VALUES('Computer Science Engieering with specialization in Cloud Computing' , '160' , 'CSE0003' , 'cse w/s cc' , 450000) , 
('Computer Science Engieering with specialization in Big Data Analytics' , '160' , 'CSE0004' , 'cse w/s bda' , 450000) , 
('Computer Science Engieering with specialization in Gaming Technology' , '160' , 'CSE0005' , 'cse w/s gt' , 450000),
('Computer Science Engieering Core' , '160' , 'CSE0006' , 'cse core' , 450000);

UPDATE student set course_id = 'cse core' where course_id = 'cse w/s core';

SELECT * FROM student;

DESCRIBE student;

DESCRIBE course_details;
SELECT s.regno , s.student_first_name , s.course_id from student s;
SELECT  c.course_name , c.course_id from course_details c;

select s.regno ,  s.student_first_name , c.course_name from student s join course_details c on s.course_id = c.course_id;

SELECT * from subject_details;

SELECT s.subject_name , c.course_name from subject_details s join course_details c on s.subject_id = c.subject_id;



create Procedure getstudents()
begin
select * from student order by student.regno;
END ;

create Procedure getsubjectdetails()
begin select * from subject_details ORDER BY subject_id ; end;

create Procedure getcoursedetails()
begin select * from course_details ORDER BY  course_id ; end;

CREATE Procedure getfacultydetails()
begin SELECT * from faculty_detail order by faculty_id ; end;

CREATE Procedure getstudentsbylastname(in lastname varchar(20))
begin select * from student where lastname = student_last_name; end;

call getstudentsbylastname('Singh')

create Procedure getstudentbycourseid(in courseid varchar(20))
begin select * from student where courseid = course_id ; end;

call getstudentbycourseid('cse w/s bct');

call getstudents();
select * from student where course_id in('cse w/s bct ');

create Procedure getcountstudent(in lastname VARCHAR(20) , out total int(10))
begin SELECT count(student_last_name) into total from student where lastname = student_last_name; end;

drop PROCEDURE getcountstudent;
call getcountstudent('Singh',@total);
select @total;

select * from student where student_last_name = 'singh';

update student set course_id = 'cse w/s bct' where course_id = 'cse w/s bct ';

create procedure getcountcourseid(in courseid varchar(20), out total int(10))
begin select count(course_id) into total from student where courseid = course_id; end;

call getcountcourseid('cse w/s bct',@total);
SELECT @total;

show PROCEDURE status where db = 'srm';
