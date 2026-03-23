#Table Schema provided by Leetcode (Only for Reference)
Create table If Not Exists Views (article_id int, author_id int, viewer_id int, view_date date)
Truncate table Views

insert into Views (article_id, author_id, viewer_id, view_date) values ('1', '3', '5', '2019-08-01')
insert into Views (article_id, author_id, viewer_id, view_date) values ('1', '3', '6', '2019-08-02')
insert into Views (article_id, author_id, viewer_id, view_date) values ('2', '7', '7', '2019-08-01')
insert into Views (article_id, author_id, viewer_id, view_date) values ('2', '7', '6', '2019-08-02')
insert into Views (article_id, author_id, viewer_id, view_date) values ('4', '7', '1', '2019-07-22')
insert into Views (article_id, author_id, viewer_id, view_date) values ('3', '4', '4', '2019-07-21')
insert into Views (article_id, author_id, viewer_id, view_date) values ('3', '4', '4', '2019-07-21')



  
# Write your MySQL query statement below

-- Method 1:  
select distinct author_id as id from views where author_id=viewer_id order by author_id;


-- Method 2:
select distinct author_id as id from views where author_id-viewer_id=0 order by author_id;


-- Method 3:
select author_id  as id from views where author_id=viewer_id group by author_id order by author_id;


-- Method 4:
select distinct author_id as id from views where author_id in 
(select distinct viewer_id from views where viewer_id-author_id=0) order by author_id;


-- Method 5:
select author_id as id from 
(select author_id,count(viewer_id) as total_count from views where author_id=viewer_id group by author_id having total_count>=1) as table1 order by id;





