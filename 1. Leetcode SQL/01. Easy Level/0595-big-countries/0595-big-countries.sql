# Table Schema provided by Leetcode (Only for Reference)
Create table If Not Exists World (name varchar(255), continent varchar(255), area int, population int, gdp bigint)
Truncate table World

insert into World (name, continent, area, population, gdp) values ('Afghanistan', 'Asia', '652230', '25500100', '20343000000')
insert into World (name, continent, area, population, gdp) values ('Albania', 'Europe', '28748', '2831741', '12960000000')
insert into World (name, continent, area, population, gdp) values ('Algeria', 'Africa', '2381741', '37100000', '188681000000')
insert into World (name, continent, area, population, gdp) values ('Andorra', 'Europe', '468', '78115', '3712000000')
insert into World (name, continent, area, population, gdp) values ('Angola', 'Africa', '1246700', '20609294', '100990000000')




# Write your MySQL query statement below

-- Method 1:  
select name,population,area from world where area>=3000000 or population>=25000000;


-- Method 2:
select name,population,area from world where if(area>=3000000 or population>=25000000,1,0)=1;


-- Method 3:
select name,population,area from world where area>=3000000
UNION
select name,population,area from world where population>=25000000;
