# Write your MySQL query statement below

select name,population,area from world where if(area>=3000000 or population>=25000000,1,0)=1;
