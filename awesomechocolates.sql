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