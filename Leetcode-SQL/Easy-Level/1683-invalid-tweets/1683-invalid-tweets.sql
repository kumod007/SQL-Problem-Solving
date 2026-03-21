#Table Schema provided by Leetcode (Only for Reference).
Create table If Not Exists Tweets(tweet_id int, content varchar(50))
Truncate table Tweets

insert into Tweets (tweet_id, content) values ('1', 'Let us Code')
insert into Tweets (tweet_id, content) values ('2', 'More than fifteen chars are here!')
  



# Write your MySQL query statement below

-- Method 1:
select tweet_id from tweets where length(content)>15;


-- Method 2:
select tweet_id from tweets where not length(content)<=15;


-- Method 3:
select tweet_id from tweets where char_length(content)>15;


-- Method 4:
select tweet_id from tweets where if(length(content)>15,1,0)=1;


-- Method 5:
select tweet_id from tweets where char_length(content) not between 0 AND 15;


-- Method 6:
select tweet_id from tweets where content regexp "^.{16,}$";
