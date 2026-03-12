# Write your MySQL query statement below

select name,population,area from world where area>=3000000
UNION
select name,population,area from world where population>=25000000;
