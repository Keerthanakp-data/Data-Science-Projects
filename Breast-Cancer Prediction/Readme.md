# 🎗️ Breast Cancer Prediction 

## 📘 Project Overview
Breast cancer is the most common cancer amongst women in the world. It accounts for 25% of all cancer cases, and affected over 2.1 Million people in 2015 alone. It starts when cells in the breast begin to grow out of control. These cells usually form tumors that can be seen via X-ray or felt as lumps in the breast area.

This project aims to predict whether a tumor is malignant or benign using machine learning algorithm on breast cancer diagnostic data . The goal is to assist medical professional by providing a reliable model for early detection and prevention.

## 🗄️ Dataset Description
The dataset is sourced from **Breast Cancer Wisconsin (Diagnostic) Dataset** available on Kaggle.


## ⚙️ Tools & Libraries Used 
- **Python**,**Jupyter GoogleCollab
- **Pandas**, **NumPy** — data processing  
- **Matplotlib**, **Seaborn** — visualization  
- **Scikit-learn** — model building & evaluation

## 🔍 Project Workflow
1. **Data Cleaning** – Checked for missing values and duplicate records  
2. **Exploratory Data Analysis (EDA)** – Visualized class balance and feature correlations   
4. **Data Splitting** – Divided dataset into training and testing sets  
5. **Model Building** – Used Decision Tree and Naives Bayes Model
6. **Model Evaluation** – Compared models based on accuracy, precision, recall, and ROC-AUC score  

---

## 🧠 Model Performance
| Model | Accuracy | Precision | Recall | F1-Score |
|-------|-----------|------------|---------|-----------|
| Decision Tree | 92% | 90% |  | 88% | 89%
| Naives Bayes Model| 93% | 100% | 83% | 91% |

## 📈 Key Insights
-The model performs well overall meaning it predicts 92% of all tumors.
-When the model predicts cancer, its right 90% of the time.
-In particular , it detects 88% of actual cancer cases and has 90% precision meaning false    alarms are rare.


