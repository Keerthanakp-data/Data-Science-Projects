
#  Hospital Readmission Prediction 
## 📘 Project Overview
Hospital readmission is a major challenge for healthcare providers, leading to increased medical costs, reduced quality scores, and penalties under value-based care programs.
This project builds a machine learning model to predict whether a patient is likely to be readmitted within days of discharge by assesing patients demographic , 
medical diagnoses and other clinical indicators.

## 📊 Dataset Description
This dataset is sourced from Kaggle and contains 30000 rows and 12 columns.The dataset includes customer information such as:

| Column Name | Description |
| --- | --- |
| patient id | Id of the patient |
| Age | Age of the patients |
| Gender | genderof the patients |
| blood pressure | Systolic/Diastolic (mmHg) |
| cholesterol | Total cholesterol (mg/dL) |
|Age | Age of the customer |
|bmi | body mass index of the patient |
|diabetes| if patient has diabetes |
|hypertension | if patient has hypertension |
|medication count| medication count per patient  |
|length of stay | total number of days patient has spent in the hospital |
| discharge destination | discharge destination of the patient |
|readmitted 30 days | if patient has been readmitted after 30 days |

## ⚙️ Tools & Libraries Used
- **Python**,**JupityerCollab** 
- **Pandas** and **NumPy** for data cleaning and processing  
- **Matplotlib** and **Seaborn** for data visualization  
- **Scikit-learn** for model building and evaluation

## 🔍 Project Workflow
1. **Data Cleaning:** 
   * Checked missing values, duplicates, and dropped irrelevant features 

2. **Exploratory Data Analysis (EDA):** 
   * Distribution of both numerical variables and categroical variables
   * Visualized relationships between features and target variable: readmission 
   * Correlation heatmaps 

3. **Feature Engineering:** 
    * Encoded categorical variables (mapping , label encoding)
    * Splitted the blood pressure variables into systolic and diastolic

4. **Model Building:**
   * Base line modelling using Logistic regression , decision tree ,SVM ,KNN 
   * Improved Modelling with Class Weights

5. **Model Evaluation:** 
    * Evaluated models using accuracy, precision, recall, F1-score
    * Also compared the models by plotting their results to find the best model suited.

## 🧠 Model Results
| Model | Accuracy | Precission | Recall | F1 Score
|-------|-----------|----------|----------|----------|
| Logistic Regression | 67% | 0 - 0.90 , 1- 0.18 | 0- 71%, 1- 44% | 0- 79%, 1- 26%|
| Decision Tree | 78% | 0 - 88% , 1- 16% | 0- 88%, 1- 14% | 0- 88%, 1- 15%|
| SVM | 87% | 0 - 87 , 1- 0.00 | 0- 1.00, 1- 00.00 | 0- 93%, 1- 0.00 |
| KNN | 86% | 0 - 87 , 1- 17 | 0- 98%, 1- 0.02 | 0- 93%, 1- 0.00 |

Even though the accuracy scores of the models SVM and KNN are higher , but both the model's recall scores is 0 which means that it fails to catch patients with readmission .
Whereas Logistic Regression  correctly detects 77% of all no readmissions and 44% of all actual readmissions which makes it far better at capturing patients who are likely to be readmitted.
Hence Logistic regression is the best model for the prediction of readmission of the patients because it identifies significantly high risk patients compared to other models


### 🧩 Imbalanced Dataset
During initial model development , the models struggled due to highly imbalanced dataset. 
All the models  failed to capture the readmission of the patients with recall score 0 and high accuracy and precission. 

To address this issue :
- Class balanced weights were added to Logistic Regression and Decision Tree models .
- The model results produced slightly lower accuracy but improved recall from 0 to 44%

Accuracy alone is not useful metric in imbalanced healthcare dataset.A model can get high accuracy by predicting no readmission for every patient.
This gives a falsely high accuracy but detects none of the high risk patients.

## Key/Business Insights
* With model , the hospital can identify almost half of the patients who are truly at risk which helps to reduce avoidable readmissions
* High risk patients can receive early intervention and follow up care.
* Hospital readmission costs healthcare an estimated of $17 billion annually. Since our model captures 44% of actual readmissions , this translates to approximately
  $7.48 billion potential savings each year .
   44% = 0.44
  17 billion X 0.44 = $7.48

High  Risk Patients Segments:
* Patients who have diagnosed with diseases such as diabetes , hypertension are likey to get readmitted.
* Patients who have moved to home after discharge have found to be readmitted after 30 days compared the nursing facility and rehab.This is probably due the
  less care facilities received at home.
* Age or gender of the patients does not determine in the readmission predictions.


## Recommended Actions
- Enabling targeted interventions and care for high risk patients.
- Care package for the vulnerable patients after discharge.
- 

## 🚀 Future Improvements
- Using Smote during modelling  could correct imbalance classes.
- Perform hyperparameter tuning to improve accuracy




  
