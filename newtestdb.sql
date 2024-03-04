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

create table emp2(id int(10) not null PRIMARY key , name VARCHAR(20) , salary int(10));

CREATE trigger insertemp3 after insert on emp2 for each ROW 
begin 
INSERT into emp2 VALUES(new.id , new.name , new.salary , new.CURTIME());
end;

insert into emp2 VALUES(1,'dhruv bharara',780000);

alter table emp2 add time_inserted time;

DESCRIBE emp2;

SELECT * from emp2;

drop Trigger insertemp2;

alter table emp2 drop COLUMN time_inserted;


drop trigger insertemp3;

INSERT into emp2 VALUES(2,'pritesh panda',12990000,NULL);

alter table emp2 add COLUMN insert_time TIME;

alter TABLE emp2 drop COLUMN insert_time;

CREATE table emp_info(name VARCHAR(20) , inserted TIME);


DROP Trigger insertemp3;

CREATE trigger insertempinfo AFTER insert on emp2 for each row       
begin insert into emp_info VALUES(new.name, CURRENT_TIME());
END;


drop TRIGGER insertempinfo;

INSERT into emp2 VALUES (3,'Pritesh chandu',12900000);

SELECT * from emp2;

SELECT * from emp_info;

CREATE Procedure insertemp2(in e_id int(10) ,  e_name varchar(20) , e_salary int(10))
begin
insert into emp2 VALUES(e_id,e_name,e_salary);
end;

call insertemp2(4,'rakesh chawla',3000000);

