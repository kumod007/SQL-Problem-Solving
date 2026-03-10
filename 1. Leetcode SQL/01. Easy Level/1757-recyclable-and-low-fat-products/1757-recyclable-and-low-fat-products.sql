# Write your MySQL query statement below

-- Method 1:
select product_id from products where low_fats="Y" and recyclable="Y";



-- Method 2:
select product_id from products where low_fats<>"N" and recyclable<>"N";


-- Method 3:
select product_id from Products where (low_fats, recyclable) in (("Y","Y"));


-- Method 4:
select product_id from Products where (low_fats="Y") + (recyclable ="Y")=2;


-- Method 5:
select product_id from Products where if(low_fats="Y" and recyclable="Y",1,0)=1;

