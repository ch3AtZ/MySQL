-- Active: 1705078993832@@127.0.0.1@3306
use company;

show DATABASEs;

use `awesome chocolates`;

show TABLEs;

select * from geo;

select * from people

select * from products

select * from sales;

select saledate from sales;

select saledate , amount , customers , boxes from sales;

select saledate , amount , boxes , amount/boxes 'amount per box' from sales;

select * from sales where amount > 10000;

select * from sales where amount > 10000 order by amount; #order by to show in ascending order of amount

select * from sales where amount > 10000 order by amount desc;

select * from sales where geoid = 'g1' order by pid;

select * from sales where amount > 10000 and saledate >= '2022-01-01';

select saledate , amount from sales where year(saledate) = 2022 order by amount;

select * from sales where boxes > 0 and boxes > 50;

select * from sales where boxes between 0 and 50 order by boxes;

select saledate , amount , customers, weekday(saledate) as 'Day of week' from sales where weekday(saledate) = 4; #weekday -> monday as 0 to sunday as 6


select * from people where team = "Delish" or team = "Jucies";

select * from people where team in ('Delish','Jucies');

select * from people where salesperson like ''

SELECT * from sales;
SELECT * from geo;

select g.geo ,g.region , s.boxes from geo g join sales s on g.geoid = s.geoid;

show tables;

select * from people;
select * from products;

create view  saleinregion as 
select g.geo , g.region , s.boxes from geo g join sales s on g.geoid = s.geoid ;

SELECT * from saleinregion;

 SELECT * from sales;


show PROCEDURE STATUS where db = 'awesome chocolates'

SAVEPOINT a;

create DATABASE test4;

use test4;

-- Create the table
CREATE TABLE CustomerTransactions (
    CustomerName VARCHAR(100),
    CustomerID INT,
    TransferAmount DECIMAL(10, 2)
);

-- Insert sample data
INSERT INTO CustomerTransactions (CustomerName, CustomerID, TransferAmount) VALUES
('John Doe', 1001, 500.00),
('Alice Smith', 1002, 300.50),
('Bob Johnson', 1003, 1000.00),
('Emily Brown', 1004, 700.25),
('Michael Wilson', 1005, 450.75),
('Sarah Lee', 1006, 600.00),
('David Taylor', 1007, 850.50),
('Jennifer Clark', 1008, 200.25),
('Christopher Martinez', 1009, 950.75),
('Jessica Anderson', 1010, 1200.00);

SELECT * FROM customertransactions;

SAVEPOINT b;

create Procedure getcreditlevel(in idee int , out creditlevel varchar(20) )
begin 
DECLARE credit int;
select TransferAmount into credit from customertransactions where idee = CustomerID;
if credit > 700 then set creditlevel = 'GOLD';
end IF;
end;

call getcreditlevel(1007,@creditlevel);
SELECT @creditlevel

commit;

CREATE Procedure getcreditlevel2(in idee int,out creditlevel varchar(20))
begin 
declare credit int;
SELECT transferamount into credit from customertransactions where idee = customerid;
if credit > 700 then set creditlevel2 = 'Gold'; else set creditlevel2 = 'Bronze';
end If;
end;

call getcreditlevel2(1006,@creditlevel2);
SELECT @creditlevel2

COMMit;

drop table if EXISTS calendars;

CREATE table numberss(id int(10) not null AUTO_INCREMENT  PRIMARY key, start_num int(10) , chang int(10));

