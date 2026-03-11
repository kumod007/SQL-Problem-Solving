#Table Schema provided by Leetcode (only for Reference).
Create table If Not Exists Customer (id int, name varchar(25), referee_id int)
Truncate table Customer

insert into Customer (id, name, referee_id) values ('1', 'Will', NULL)
insert into Customer (id, name, referee_id) values ('2', 'Jane', NULL)
insert into Customer (id, name, referee_id) values ('3', 'Alex', '2')
insert into Customer (id, name, referee_id) values ('4', 'Bill', NULL)
insert into Customer (id, name, referee_id) values ('5', 'Zack', '1')
insert into Customer (id, name, referee_id) values ('6', 'Mark', '2')


  

# Write your MySQL query statement below

-- Method 1: Using OR Operator
select name from customer where referee_id!=2 or referee_id is null;


-- Method 2: Using NOT, OR Operator
select name from customer where not(referee_id=2) or (referee_id is null);


-- Method 3: Using Ifnull
select name from customer where ifnull(referee_id,0)!=2;


-- Metho 4: Using Coalesce
select name from customer where coalesce(referee_id,0)!=2;


-- Method 5: Using If Condition
select name from customer where if(referee_id!=2 or referee_id is null,1,0)=1;


