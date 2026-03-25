# 🏦 Bank Customer Churn Prediction

## 📘 Project Overview
This project aims to predict whether a customer will **leave the bank (churn)** or **stay**, by analyzing demographic and financial data.
By identifying potential churners, the bank can take proactive steps to improve customer retention strategies to improve profitability and customer loyality.

## Business Problem
Customer churn is one of the most costly challenges in retail banking. Acquiring a new customer costs 5–7x more than retaining an existing one. For a bank with 10,000 customers at a 20% churn rate, that represents over 2,000 customers at risk of leaving every year.

Without a predictive model, a bank has two options — both expensive:
- Do nothing and lose the customers
- Run a blanket retention campaign across all 10,000 customers, wasting budget on the 80% who were never going to leave.
The business requirement: Build a model that identifies which specific customers are most likely to churn, so the bank can intervene early and focus retention spend where it will have the most impact.

# Business Impact:
- MetricValueTotal customers analysed 10,000
-  Customers identified as at-risk 2,038 (20.4%)
-  Customers correctly flagged by model~1,019 (1 in 2 at-risk customers)
-  Reduction in campaign audience vs blanket outreach 60%
-  At-risk annual revenue (UK retail banking avg £150–£300/customer)£150K – £300K

In plain terms: Instead of contacting all 10,000 customers, the model enables the bank to run a targeted campaign of ~4,000 flagged customers that captures approximately 1,019 genuine churners — cutting campaign cost by 60% while maximising reach to genuinely high-risk customers.

## 📊 Dataset Description
This dataset is sourced from Kaggle and contains 10000 rows and 18 columns.The dataset includes customer information such as:

| Column Name | Description |
| --- | --- |
| RowNumber | Row number |
| CustomerId | Unique identification key for different customers |
| Surname | Customer's last name |
| CreditScore | Credit score of the customer |
|Geography | Country of the customer |
|Age | Age of the customer |
|Tenure | Number of years for which the customer has been with the bank |
|Balance | Bank balance of the customer |
|NumOfProducts | Number of bank products the customer is utilising |
|HasCrCard | Binary flag for whether the customer holds a credit card with the bank or not |
|IsActiveMember | Binary flag for whether the customer is an active member with the bank or not |
|EstimatedSalary | Estimated salary of the customer in Dollars |
|Exited | Binary flag 1 if the customer closed account with bank and 0 if the customer is retained |
|Complain | Binary flag 1 if the customer has a complaint with bank and 0 if the customer has no complains |
|Satisfaction Score | Customer satisfaction score |
|Card Type | Type of bank cards customer owns |
|Point Earned |Card  Points customer has earned |

## ⚙️ Tools & Libraries Used
- **Python**,**JupityerCollab** 
- **Pandas** and **NumPy** for data cleaning and processing  
- **Matplotlib** and **Seaborn** for data visualization  
- **Scikit-learn** for model building and evaluation

## 🔍 Project Workflow

## 1. Data Quality Checks & Cleaning

- Checked all 18 columns for missing values, duplicates, and irrelevant features
- Dropped non-predictive identifiers: RowNumber, CustomerId, Surname
- Encoded categorical variables (Geography, Gender) using label encoding
- Scaled numerical features (Balance, CreditScore, EstimatedSalary) using StandardScaler


## 2. Data Leakage Discovery & Resolution ⚠️

This is the most commercially important decision in the project.
During model development, initial accuracy came back at 99% — which immediately raised a red flag. After investigation, the Complain variable was identified as the cause of data leakage.

- What data leakage means in this context:
The Complain variable records whether a customer raised a complaint. In reality, complaints and churn happen simultaneously — a customer complains as they are leaving, not weeks before. This means in a real deployment scenario, the model would never have access to this variable at prediction time. It was learning a pattern it wouldn't know in production.

Fix applied:
- The Complain variable was removed from the feature set entirely.
- Post-correction accuracy settled at 86% — a lower number, but one that reflects genuine predictive power rather than a data artefact.
- Before leakage fix:  99% accuracy  ← looks impressive, completely unreliable in production
- After leakage fix:   86% accuracy  ← honest, deployable, trustworthy
  
This distinction between a model that looks good on paper and one that works in a real environment is one of the most critical judgements in applied data science.

## 3. Exploratory Data Analysis (EDA)

Key findings from statistical analysis and visualisation:
- Finding Business Implication Customers aged 40–50 churn at significantly higher rates.
- Single-product customers churn most . 
- Customers with 2–3 products churn far less.
- Inactive members are far more likely to churn
- Re-engagement programme needed — rewards for regular transactions
- German customers churn at ~2x the rate of French/Spanish
- Regional product-market mismatch — 
- High balance customers churn more than expected
- Counter-intuitive — suggests competitor products may be more attractive for wealthy customers

## 4. Feature Engineering

-Encoded Geography (France=0, Germany=1, Spain=2) and Gender (Male=0, Female=1)
-Removed Complain due to data leakage (see above)
-Removed RowNumber, CustomerId, Surname as non-predictive
-Applied StandardScaler to continuous numerical features

## 🧠 Model Building & Evaluation
Results:

| Metric | Score |
| -------|----- |
|Accuracy| 86%|
|F1-Score | e0.83|

Evaluation methods :  Confusion matrix, Precision, Recall, ROC curve

Model chosen: XGBoost Classifier

XGBoost was selected over logistic regression and decision trees because:
-Strong performance on tabular data with mixed feature types
-Handles class imbalance better than simpler models
-Feature importance output supports business interpretation

## Key/Business Insights
-About half of the customers who are at risk of leaving are sucessfully identified by the model.
-The bank can now proactively target 1 out of every 2 churn prone customers before they close their accounts.

High-Risk Customer Segments & Recommended Actions:

- Segment 1 — Customers aged 40–50
  Risk level: High
  Action: Personalised relationship manager outreach, premium account upgrades, loyalty benefits
  
- Segment 2 — Single-product customers
  Risk level: High
  Action: Cross-sell credit cards, savings accounts, investment products — the data shows multi-product   customers churn significantly less
  
- Segment 3 — Inactive members
  Risk level: High
  Action: Re-engagement campaign — transaction rewards, cashback offers, digital banking incentives
- Segment 4 — German customers
  Risk level: Moderate-High
  Action: Regional product review — churn rate is approximately double France and Spain, suggesting a product-market mismatch rather than individual customer issue
  
- Having multiple products ( credit cards, saving etc) reduces churn indicating that cross-selling can be a strong retention strategy.

## Recommended Actions
- Build retention campaign targeting the high risk customers with personalized offers.
- Develop re engagement programs such as rewards for regular transactions or account usage.
- Adding more products like cross-selling credit cards

## 🚀 Future Improvements
- Adding class weight or using Smote during modelling  could correct imbalance classes.
- Perform hyperparameter tuning to improve accuracy




  
