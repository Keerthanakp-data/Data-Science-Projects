# 🎧 Spotify Churn and Retention Analysis using SQL

## 📘 Project Overview
This project focuses on analyzing **user churn and retention** patterns for Spotify users using SQL.  It contains 1000 rows and 9 columns
The goal is to identify factors influencing user drop-off, track engagement trends, and generate insights to help improve customer retention strategies.

## 🗄️ Dataset
This dataset is sourced from Kaggle .The dataset contains the following information/columns
-Subscription type
-Country
-Average daily minutes
-Number of playlist
-Top genre ON spotify
-Skips per day 
-Support tickets
-Days since last login
-Churn

## 🛠️ Tools & Technologies
- SQL (MySQL) 


## 🎯 Objectives 
-Identify churn users and active users based on listening and subscription data
-Analyze usage patterns , subscription duration and engagement metrics
-Calculate churn rate and churn risk score 
-Identify churn status by country , genre , and subscription type


## 📊 Analysis Approach

- Data Preparation and Cleaning - identifying duplicate and null values, 
- Exploratory data analysis- identifying  usage trends
- KPI computation - calculating churn metrics and churn risk score
- Insight Generation - summarizing findings and recommending interventions

## 🧠 Key SQL Concepts Used
- Aggregate Functions (COUNT, SUM, AVG) for user behavior metrics.
- Case Statements for finding null values and classify churn vs active users
- Window functions
- CTEs

## Key Insights 
- Users  listened to Country music on Spotify majorily followed by Hip-Hop and Rock.
- Country music emerged as the genre with the highest number of playlist indicating strong  listener engagement and popularity among users.
- 60% of the users had premium subrscription.
- Out of 1000 users , 186 users tend to churn with churn rate of 18%
- Free subscribers had highest churn rate with 35% and they have higher chances to churn.
- Australia found to have more number of churned users and least in the UK.
- Higest churned users listened to Country music despite being popular and least churned users preferred pop music.
- Churned users exhibited significantly lower average listening time compared to non churned users  indicating that engagement duration is a strong predictor of user retention.
- Churned users were inactive compared to the non churned users.

## Business Impact
The insights from this analysis can support
-Retention campaigns targeting low engagement as it is known higher engagement can reduce churn rate.
- Pricing and plan optimization for free users as they are more likely to churn
- Personalized plans for high value user groups.













