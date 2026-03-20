# Write your MySQL query statement below



select distinct author_id as id from views where author_id in 
(select distinct viewer_id from views where viewer_id-author_id=0) order by author_id;