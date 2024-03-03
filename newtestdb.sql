CREATE DATABASE emp;
show DATABASES;
use emp;
 

CREATE table emp1(id int(10) not null PRIMARY key, first_name varchar(20) not null , last_name varchar(20) not null , job VARCHAR(20) not null , hiredate DATE  , supervisor_id int(4) not null);

SELECT * FROM emp1;

INSERT into emp1 VALUES(1,'dhruv','bharara','manager','2024-01-04',5);

alter table emp1 add COLUMN salary int(10) not null;


CREATE Trigger befstudent before insert on emp1 for each row 
begin   
if new.job = 'coook' then set new.job = 'cook';
end if;
end

insert into emp1 VALUES(5,'raj','mohan','coook','2023-08-22',3,650000);

SELECT * from emp1;