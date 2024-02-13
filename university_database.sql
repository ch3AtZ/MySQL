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