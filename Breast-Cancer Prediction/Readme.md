# 🎗️ Breast Cancer Prediction 

## 📘 Project Overview
Breast cancer is the most common cancer amongst women in the world. It accounts for 25% of all cancer cases, and affected over 2.1 Million people in 2015 alone. It starts when cells in the breast begin to grow out of control. These cells usually form tumors that can be seen via X-ray or felt as lumps in the breast area.

This project aims to predict whether a tumor is malignant or benign using machine learning algorithm on breast cancer diagnostic data . The goal is to assist medical professional by providing a reliable model for early detection and prevention.

## 🗄️ Dataset Description
The dataset is sourced from **Breast Cancer Wisconsin (Diagnostic) Dataset** available on Kaggle.The dataset contains the following information for each instance:

1. ID number: A unique identifier for each sample.
2. Diagnosis: The target variable indicating the diagnosis, where 'M' represents malignant and 'B' represents benign.

For each cell nucleus, ten real-valued features are computed, which are:

1. Radius: The mean distance from the center to points on the perimeter of the nucleus.
2. Texture: The standard deviation of gray-scale values in the nucleus.
3. Perimeter: The perimeter of the nucleus.
4. Area: The area of the nucleus.
5. Smoothness: A measure of local variation in radius lengths.
6. Compactness: Computed as the square of the perimeter divided by the area minus 1.0.
7. Concavity: Describes the severity of concave portions of the nucleus contour.
8. Concave points: Represents the number of concave portions of the nucleus contour.
9. Symmetry: Measures the symmetry of the nucleus.
10. Fractal dimension: This feature approximates the "coastline" of the nucleus, using the concept of fractal geometry.


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
| Decision Tree | 92% | 90% |  88% | 89%
| Naives Bayes Model| 93% | 100% | 83% | 91% |

## 📈 Key Insights
-The model performs well overall meaning it predicts 92% of all tumors.
-When the model predicts cancer, its right 90% of the time.
-In particular , it detects 88% of actual cancer cases and has 90% precision meaning false    alarms are rare.


