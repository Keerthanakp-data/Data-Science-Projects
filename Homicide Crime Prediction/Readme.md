# 🕵️‍♂️ Homicide Crime Prediction 

## 📘 Project Overview
This project was part of my MSc Data Science and Analytics Coursework at Brunel University London

The aim of this  is to predict the offender’s demographic that is age and gender by 
considering the factors like victim’s demographic , the characteristics of the case and organizational 
factors. 

## 🗄️ Dataset Description
The dataset for this project was sourced from The Murder Accountability Project. It is the most complete 
database of homicides in the United States currently available. This dataset includes murders from the FBI's 
Supplementary Homicide Report from 1976 to the present and Freedom of Information Act data on more 
than 22,000 homicides that were not reported to the Justice Department. The Murder Accountability Project 
makes available to police and the general public all of the data files it uses for this Website .( Murder 
Accountability Project: Data & Docs (murderdata.org).The data set consist of the following description

*ID – Unique record identifier generated 
*CNTYFIPS – The Census Bureau’s Federal Information Processing Standards (FIPS) code designating the 
state and county of the reporting law enforcement agency. 

*ORI – The alphanumeric variable describing the Originating Agency making the report. 

*STATE – The alphanumeric variable describing the state of the Originating Agency making the report. 

*AGENCY – The alphanumeric variable describing the name of the law enforcement agency making the 
report 

*AGENTYPE – The one-digit numeric code describing the type of law enforcement agency making the 
report. 

*SOLVED – MAP-generated indicator whether Offender was identified at time report was made 
(SOLVED=1) or not identified (SOLVED=0). Numeric single digit format. 

*YEAR – Year of homicide 

*MONTH – The month of homicide occurrence or when the victim’s body was recovered. 

*INCIDENT – A three-digit number describing the case number within the month in which a homicide 
occurred. 

*ACTIONTYPE – A numeric variable describing the nature of the report received. 

*HOMICIDE – An alphanumeric variable defining whether the report was “A” = “Murder or Non negligent 
manslaughter” or “B” = “Manslaughter by Negligence.” 

SITUATION – An alphanumeric variable defining whether the crime had a single victim or multiple 
victims and whether there was a single offender, multiple offenders or the number of offenders was 
unknown. 

*VICAGE – A three-digit numeric variable describing the age in years of the victim.VICSEX – An 
alphanumeric variable representing whether the victim was “M” =” Male” or “F” =” Female” or “U” 
indicating “Unknown” gender, usually for conditions in which incomplete remains were recovered. 

*VICRACE – An alphanumeric variable representing victim race. 

*VICETHNIC – An alphanumeric variable representing victim ethnicity. 

*OFFAGE – A three-digit numeric variable describing the age of the offender. 

*OFFSEX – An alphanumeric variable representing whether the offender was “M” =” Male” or “F” =” 
Female” or “U” indicating “Unknown” gender 

*OFFRACE – An alphanumeric variable representing offender’s race.

*OFFETHNIC – An alphanumeric variable representing offender’s ethnicity. 

*WEAPON – A two-digit numeric variable representing the weapon used in the crime. 

*RELATIONSHIP – An alphanumeric variable describing the relationship between the victim and the 
offender, if any 

*CIRCUMSTANCES – A two-digit numeric variable representing the circumstances (or theory) for the 
crime. 

*SUBCIRCUM – A single-digit alphanumeric variable describing several conditions in which the victim is 
reported to have been a criminal offender. 

*VICCOUNT – The number of additional victims (not counting the victim included in the current record) 
included in the Supplementary Homicide Report’s incident record. 

*OFFCOUNT – The number of additional offenders (not counting the offender included in the current 
record) included in the Supplementary Homicide Report’s incident record. 

*FSTATE – A two-digit alphanumeric variable representing the state in which a homicide was reported. 

*MSA – An eight-digit numeric variable representing the Census Bureau’s Federal Information Processing 
Standards (FIPS) code for the Metropolitan Statistical Area from which a record was reported.


## ⚙️ Tools & Libraries Used
- **R**,- **Rstudio**,- **PySpark**,- **Google Collab**
- **dplyr**,**validate**,**caret** - data loading, data processing
- **ggplot** - visualization
- **random forest** ,**PySpark**- model building & evaluation

## 🔍 Project Workflow
1. **Data Cleaning** – Checked for missing values , duplicate records ,irrelevant columns,categorical variables  were converted into factor variables with accurate levels,
validation rules were applied, outliers were detected and deleted, target variable was created named 'offender age' and offender gender and grouped them into levels
3. **Exploratory Data Analysis (EDA)** – Visualized univariate,bivarariate and multivaraite analysis with target variable  
4. **Dimension Reductionality** – Used unsupervised algorithm PCA to reduce feature dimensions
5. **Data Splitting** – Divided dataset into training and testing sets  
6. **Model Building** – Used Random Forest to predict the offender age and gender and also did model building using PySpark in Python in google collab
7. **Model Evaluation** – Evaluated the model using evaluation metrics accuracy , confusion matrix and variable importance graph
8. and compared the model built in R and PySpark

## 🧠 Model Performance

| Model | Accuracy | kappa value |
|-------|-----------|------------|
| Random Forest Classification | 79% | 0.33 |

An accuracy of 0.79 indicates that the Random Forest Model  correctly predicted the target variable for 
approximately 79%.A kappa value 0.33 indicates that there is moderate agreement between the predicted 
classification and true classification. P value <0.05 suggest strong evidence to reject the null hypothesis. 
The confusion matrix displays the counts of true positive (TP), true negative (TN), false positive (FP), and 
false negative (FN) classifications for a multiclass classification problem. Each row  corresponds to a 
predicted class  and column corresponds to actual class. The cell at row 19-55M and column 19-55M 
contains the count of instances where the model predicted 19-55M and the true label was also 19-55M.

The Random Forest model in PySpark gave a test accuracy of 89.36%. The Random Forest Model  
correctly predicted the target variable for approximately 89% and top 20 rows were displayed .
 
 --COMPARISON OF METHODS 
-The test accuracy for the model were higher in Pyspark compared to R. R is single threaded and cannot scale 
well to large datasets whereas Pyspark effectively process large amounts of data by splitting up computations 
among several nodes. 
The memory capacity of R dealing with huge data set  was low compared to that of PySpark ,certain issues 
were raised while allocation  of 500 trees ,which led to the allocation of 300 trees to save the memory size.R 
performs well for smaller datasets, but has limitations when dealing with large data set such as the data set 
used in the project. 
The execution time for training the dataset was long in R compared to that of  in PySpark. It took around 50
60 minutes for random forest to train the model in R.For training the huge data set for  just 100 trees R took 
long time enough. Rather PySpark executed it within 6 minutes. 

## 📈 Key Insights
- Most of the homicide crimes offender's age and gender fell in the category of 19-55 Male and the victims in majority of the crimes were males.
- Murder and non negligible manslauhgter were topped in the list of crime type 
- Texas had shown to have higher number of crimes taking place.
- In most of the murder crimes  , the offender and the victim had relation of accuaintance.
- Guns was the weapon used in 50% of the crimes.
  
