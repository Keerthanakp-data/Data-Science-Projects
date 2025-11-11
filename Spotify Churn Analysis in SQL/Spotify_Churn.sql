SELECT * FROM spotify.spotify_churn;

### ....Data Cleaning......##

#Removing user id column

Alter Table spotify.spotify_churn 
Drop Column user_id;

#Checking for null values

select 
sum( case when subscription_type is null then 1 else 0 end) as null_subscription_type,
sum( case when  avg_daily_minutes is null then 1 else 0 end) as null_avg_daily_minutes,
sum( case when  number_of_playlists is null then 1 else 0 end) as null_number_of_playlists,
sum( case when top_genre is null then 1 else 0 end) as null_top_genre,
sum( case when skips_per_day is null then 1 else 0 end) as null_skips_per_day,
sum( case when support_tickets is null then 1 else 0 end) as null_support_tickets,
sum( case when days_since_last_login is null then 1 else 0 end) as null_days_since_last_login,
sum( case when churned is null then 1 else 0 end) as null_churned
from spotify.spotify_churn;

#no null values found

#Checking for outlier
SELECT 
    MIN(avg_daily_minutes) AS min_minutes,
    MAX(avg_daily_minutes) AS max_minutes,
    MIN(skips_per_day) AS min_skips,
    MAX(skips_per_day) AS max_skips,
    MIN(days_since_last_login) AS min_inactive,
    MAX(days_since_last_login) AS max_inactive
FROM spotify.spotify_churn;
#found some outliers in avg daily minutes

select * from spotify.spotify_churn where avg_daily_minutes < 0;
 
 #Replacing the negative minutes with 0
 
 Update spotify.spotify_churn set avg_daily_minutes = 0 where avg_daily_minutes < 0;
 
 select * from spotify.spotify_churn where avg_daily_minutes = 0;
 
 #Basic Queries
 
 # Most Top Genre
 select top_genre , count(*) as users
 from spotify.spotify_churn
 group by top_genre
 order by users desc;

# Top genre by country

select top_genre, country , count(*) as users
from spotify.spotify_churn
group by top_genre ,country
order by users  desc;

#avg number of playlist by genre
select top_genre ,sum(number_of_playlists) as total_number_playlists
from spotify.spotify_churn
group by top_genre
order by total_number_playlists desc;

 #Subscription type by users
 select subscription_type , count(*) as users
 from spotify.spotify_churn
 group by subscription_type
 order by users desc;
 
 #......Churn and Rentention........#
 
 #Total Users and Churn Rate
 
 select count(*) as total_users,
 sum(case when churned = 1 then 1 else 0 end) as churned_users,
 round(sum(case when churned = 1 then 1 else 0 end) * 100.0 / count(*), 2) as churn_rate
 from spotify.spotify_churn;
 
 #Churn by Subscription Type
 
 select subscription_type, 
 sum(case when churned = 1 then 1 else 0 end) as churned_users,
 round(sum(case when churned = 1 then 1 else 0 end) * 100.0 / count(*), 2) as churn_rate
 from spotify.spotify_churn
 group by subscription_type
 order by churn_rate;
 
 #Churn By Country 
 select country,
 sum(case when churned = 1 then 1 else 0 end) as churned_users
 from spotify.spotify_churn
 group by country
 order by  churned_users desc;
 
 #Churn By top genre
 
 select top_genre ,
 sum(case when churned = 1 then 1 else 0 end) as churned_users,
 round(sum(case when churned = 1 then 1 else 0 end) * 100.0 / count(*), 2) as churn_rate
 from spotify.spotify_churn
 group by top_genre
 order by churned_users, churn_rate;
 
 #Engagement vs Churn Rate 
 #Average listening time by Churn Status
 
 select churned , round(avg( avg_daily_minutes),2) as avg_listening_minutes
 from spotify.spotify_churn
 group by churned;
 
 #Number of playlist and retention
 select churned,
 round(avg(number_of_playlists),2) as avg_playlists
 from spotify.spotify_churn
 group by churned;
 
 # Churn status by skips per day
 
 select churned,
 round(avg(skips_per_day),2) as avg_skips
 from spotify.spotify_churn
 group by churned;
 
 # Inactivity and Churn
 
 select churned,
 round(avg(days_since_last_login),2) as avg_days_inactivity
 from spotify.spotify_churn
 group by churned;
 
 #Churn Risk Score
 
 SELECT 
    subscription_type,
    country,
    (CASE WHEN avg_daily_minutes < 30 THEN 1 ELSE 0 END
     + CASE WHEN skips_per_day > 15 THEN 1 ELSE 0 END
     + CASE WHEN days_since_last_login > 10 THEN 1 ELSE 0 END
     + CASE WHEN number_of_playlists < 2 THEN 1 ELSE 0 END
    ) AS churn_risk_score
FROM spotify.spotify_churn
ORDER BY churn_risk_score DESC;

# Churn Rate  across country
 select country ,
 round(sum(case when churned = 1 then 1 else 0 end) * 100.0 / count(*), 2) as churn_rate,
 Rank() over ( order by SUM(churned) * 100.0 / COUNT(*) DESC) as churn_rank
 from spotify.spotify_churn
 group by country;
 


 
 
 
 
 

 