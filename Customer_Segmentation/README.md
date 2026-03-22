#  Customer Segmentation Using RFM ,CLV  and Behavioral Analytics

## 📘 Project Overview
This project performs customer segmentation using RFM metrics, Customer Lifetime Value (CLV), and behavioral features.
Using KMeans clustering and dimensionality reduction (PCA & UMAP), four meaningful customer segments were identified to support targeted marketing and retention strategies.

## Business Problem
Businesses often treat all customers the same, leading to inefficient marketing spend and missed revenue opportunities.
This project identifies distinct customer groups to enable personalized engagement and revenue optimization.


## 📊 Dataset Description
This dataset is sourced from Kaggle and contains 1000 rows and 9 columns.The dataset includes customer information such as:

| Column Name | Description |
| --- | --- |
| ID | |
| Age  | Customer AGE  |
| Gender | Customer gender |
| Income | Customer income|
|Spending Score| Customer spending activity score |
|Membership Years| Customer membership duration |
|Purchase Frequency | How recently customers purchased |
|Preferred Category  | Customer Preferred Category |
|Last Purchase Amount |Amount Customer purchased last |


## ⚙️ Tools & Libraries Used
- **Python**,**JupityerCollab** 
- **Pandas** and **NumPy** for data cleaning and processing  
- **Matplotlib** and **Seaborn** for data visualization  
- **Scikit-learn** for model building and evaluation

## 🔍 Project Workflow

## 1. Data Quality Checks & Cleaning

- Checked all 9 columns for missing values, duplicates, and irrelevant features
- Dropped non-predictive identifiers: Id


## 2. Feature Engineering

- Created RFM Metrics and Customer Life Time Value
- RFM Metrics
  Recency: How recently a customer purchased
  Frequency: How often they purchase
  Monetary: How much they spend
  RFM is a widely used framework for understanding customer engagement and value.
- Customer Lifetime Value (CLV)
 CLV estimates the long-term revenue a customer is expected to generate.
 Combining CLV with RFM provides a deeper understanding of customer value.

## 🧠 Model Building & Evaluation

- Model chosen:KMeans Clustering and dimension reduction using  (PCA & UMAP)

 Elbow method and Silhouette score were used to determine the number of clusters for KMeans Clustering.
 The elbow curve showed a noticeable bend around K = 4 .
 Silhouette scores peaked at k = 2 , but k = 4 provided a better balance between mathematical separation  and business interpretability.
 Final K=4 clusters were chosen

- Cluster Visualization
  PCA and UMAP Cluster Visualization showed two large dense clusters (Cluster 0 & Cluster 2) and two      smaller scattered clusters (Cluster 1 & 3).
- Cluster Profiles
  A heatmap was generated using RFM, CLV, and behavioral features.  
  The heatmap highlights clear differences in spending behavior, loyalty, and long-term value across      clusters.

## Key/Business Insights
- Four customer segments with clear behavioral differences
- High values customers contribute disproportionately to revenue around 230k, frequent purchases, longest
  membership and low recency.
- At risk customers showed low frequency and high recency.
- Mid values customers offer strong growth potential
- High spending active customers respond well to upselling.

## Recommended Actions
- Retain high value customers with VIP programs and benefits
- Upsell to high spending customers using personalized bundles
- Reactivate at risk customers through discounts and reminders
- Grow mid value customers with targeted engagement





  


