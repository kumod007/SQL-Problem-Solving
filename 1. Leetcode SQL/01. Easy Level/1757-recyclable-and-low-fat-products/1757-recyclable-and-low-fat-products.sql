# MYSQL Schema Provided by Leetcode (Only for Reference)

Create table If Not Exists Products (product_id int, low_fats ENUM('Y', 'N'), recyclable ENUM('Y','N'))
Truncate table Products

insert into Products (product_id, low_fats, recyclable) values ('0', 'Y', 'N')
insert into Products (product_id, low_fats, recyclable) values ('1', 'Y', 'Y')
insert into Products (product_id, low_fats, recyclable) values ('2', 'N', 'Y')
insert into Products (product_id, low_fats, recyclable) values ('3', 'Y', 'Y')
insert into Products (product_id, low_fats, recyclable) values ('4', 'N', 'N')




# MySQL query statement below

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

