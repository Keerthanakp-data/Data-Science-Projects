# 🎧 Spotify Churn and Retention Analysis using SQL

## 📘 Project Overview
This project focuses on analyzing **user churn and retention** patterns for Spotify users using SQL.  
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

## 🎯 Objectives
-Data Cleaning 
-Identify churn users and active users based on listening and subscription data
-Analyze usage patterns , subscription duration and engagement metrics
-Calculate churn rate and churn risk score 
-Identify churn status by country , genre , and subscription type

🧠 Key SQL Concepts Used
- Aggregate Functions (COUNT, SUM, AVG) for user behavior metrics.
- Case Statements for finding null values and classify churn vs active users
- Window functions

## 📊 Analysis Performed

Data Cleaning:

-Removing user id column to adhere to data ethical / data governance

Alter Table spotify.spotify_churn 
Drop Column user_id;








