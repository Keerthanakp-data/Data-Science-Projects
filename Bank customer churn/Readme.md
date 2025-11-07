# 🏦 Bank Customer Churn Prediction

## 📘 Project Overview
This project aims to predict whether a customer will **leave the bank (churn)** or **stay**, by analyzing demographic and financial data.
By identifying potential churners, the bank can take proactive steps to improve customer retention strategies to improve profitability and customer loyality.

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
1. **Data Cleaning:** Handled missing values, duplicates, and dropped irrelevant features  
2. **Exploratory Data Analysis (EDA):** Visualized relationships between features and churn  
3. **Feature Engineering:** Encoded categorical variables and scaled numerical data  
4. **Model Building:** Implemented  XGBoost machine learning  
5. **Model Evaluation:** Evaluated models using accuracy, precision, recall, F1-score, and Confustion Matrix .Also plotted the ROC curve.

## 🧠 Model Results
| Model | Accuracy | F1-Score |
|-------|-----------|----------|
| XGBoost | 86% | 0.83 |

### 🧩 Data Leakage Prevention
During model development , I discovered data leakage with complain variable which was causing the model to overfit with 99% accuracy.

Data leakage happens when information from outside the training dataset (or from the test set) is accidentally used to build the model.
That means your model learns patterns it shouldn’t know yet — it performs great on training/testing data but fails on unseen data.

To address this issue :
-The complain variable was dropped during the modelling process.
After correcting the leakage, the model's accuracy reduced slightly (from **90% → 86%**), but this improvement in methodology made the results **more robust and trustworthy**.

## Key/Business Insights
-About half of the customers who are at risk of leaving are sucessfully identified by the model.
-The bank can now proactively target 1 out of every 2 churn prone customers before they close their accounts.

High Churn Risk Segments:
* Customers with low activity and low products are more likely to churn most.
* Customer aged 40 and 50 are at risk of leaving the bank serivices.
* Customers who are less engaged with their accounts.

- Having multiple products ( credit cards, saving etc) reduces churn indicating that cross-selling can be a strong retention strategy.

## Recommended Actions
- Build retention campaign targeting the high risk customers with personalized offers.
- Develop re engagement programs such as rewards for regular transactions or account usage.
- Adding more products like cross-selling credit cards

## 🚀 Future Improvements
- Adding class weight or using Smote during modelling  could correct imbalance classes.
- Perform hyperparameter tuning to improve accuracy




  
