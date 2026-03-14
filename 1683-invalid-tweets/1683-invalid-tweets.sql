# Write your MySQL query statement below


select tweet_id from tweets where content regexp "^.{16,}$";