
#  Vehicle Price Prediction

## 📘 Project Overview
The goal of this project is to develop a predictive model that estimates the price of a vehicle based on its attributes e.g model , mileage, engine etc.
By leveraging historical data, machine learning models can learn the relationship between these features and vehicle prices to provide accurate price estimates.

## 📊 Dataset Description
This dataset is sourced from Kaggle and contains 1002 rows and 17 columns.The dataset includes vehicle  information such as:

| Column Name | Description |
| --- | --- |
| name | The full name of the vehicle, including make, model, and trim. |
| description | A brief description of the vehicle, often including key features and selling
points. |
| make | The manufacturer of the vehicle (e.g., Ford, Toyota, BMW). |
| model| The model name of the vehicle. |
|year | The year the vehicle was manufactured. |
|price | The price of the vehicle in USD.|
|engine | Details about the engine, including type and specifications. |
| cylinders| The number of cylinders in the vehicle's engine.  |
| fuel | The type of fuel used by the vehicle (e.g., Gasoline, Diesel, Electric). |
| mileage | The mileage of the vehicle, typically in miles. |
| transmission | The type of transmission (e.g., Automatic, Manual). |
| trim | The trim level of the vehicle, indicating different feature sets or packages. |
| body | The body style of the vehicle (e.g., SUV, Sedan, Pickup Truck) |
| doors | The number of doors on the vehicle. |
| exterior_color | The exterior color of the vehicle.  |
| interior_color | The interior color of the vehicle. |
| drivetrain | The drivetrain of the vehicle (e.g., All-wheel Drive, Front-wheel Drive).  |

## ⚙️ Tools & Libraries Used
- **Python**,**JupityerCollab** 
- **Pandas** and **NumPy** for data cleaning and processing  
- **Matplotlib** and **Seaborn** for data visualization  
- **Scikit-learn** for model building and evaluation

## 🔍 Project Workflow
1. **Data Cleaning:** Detected missing values and handled missing values by imputing them with median and mode, detected  duplicates, and dropped irrelevant features  
2. **Exploratory Data Analysis (EDA):** Visualized relationships between vehicle features and  price, explored outliers in price and mileage by using IQR method ,
3. and handled them by using log transformation, also explored correlation between the numerical variables
4. **Feature Engineering:** Encoded categorical variables and scaled numerical data  
5. **Model Building:** Implemented  Linear Regression Method 
6. **Model Evaluation:** Evaluated models using mean absolute error, mean squared error, r2 score and also plotted the actual vs predicted values
 

## 🧠 Model Results
| Model | MAE | RMSE | R2 |
|-------|-----------|----------|--------|
| Linear Regression | 4742.58 | 7792.82 | 80% |



## Key/Business Insights

-Vehicle Prices are right skewed , with most vehicles priced under $50,000 but there are a few high end 
vehicles above $100,00.
- Vehicle prices increased most during the year of 2024.
- Brands like Jeep , and Hyundai have the highest number of listings , while luxury brands BMW and Mercedes have fewer listings but higher average prices.
- Vehicles with diesel and electric fuel types tend to have higher prices compared to petrol or hybrid.
   This could be due to higher engine efficiency , lower running costs or the premium associated with electirc technology.
- Similarly , vehicles with body type pick-up truck and sedan had variation with higher price range.
- Also prices were higher for vehicles with four wheel drive train

-The linear regression model performs strongly explaining 80% of the variation in vehicle price.
The mean squared error is 4742 which the predictions are within $4742 of the true price .
The root mean squared error is 7792 which mean with larger errors around £7,800 for rare or luxury cars.








  
