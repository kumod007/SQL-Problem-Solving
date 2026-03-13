# Write your MySQL query statement below
select author_id as id from 
(select author_id,count(viewer_id) as total_count from views where author_id=viewer_id group by author_id
having total_count>=1) as table1 order by id;