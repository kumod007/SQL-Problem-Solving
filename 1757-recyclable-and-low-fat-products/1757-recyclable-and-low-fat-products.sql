# Write your MySQL query statement below

select product_id from Products where if(low_fats="Y" and recyclable="Y",1,0);