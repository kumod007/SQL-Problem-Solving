# Write your MySQL query statement below

select name from customer where if(referee_id!=2 or referee_id is null,1,0);