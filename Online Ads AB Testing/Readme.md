## Online Advertising Effectiveness A/B Testing

## A/B Testing

A/B testing is a controlled experimental method used to compare two or more versions of a product, feature, or campaign to determine which performs better.
By randomly assigning users into control and treatment groups and measuring key metrics—such as clicks, conversions, or purchases—A/B testing provides statistical evidence of the impact of changes. This approach enables data-driven decisions, helping organizations optimize user experiences, increase engagement, and improve overall business outcomes.

## 📘 Project Objective 
A large X company with substantial user base plans to increase their sales through advertisement on its website. However they are skeptical about whether the ads will increase
sales or not. So the goal of this project to evaluate the effectiveness of online advertising strategies using controlled A/B testing . The plan is to subject the 20000 customers to A/B testing for 31 days.

## 🗄️ Dataset Description
This data set is sourced from Kaggle  with 20000 rows, 6 columns and contain the following information:

- Columns customerID: unique identifier for the customer 
- test group: composed of 60% 'ad' and 40% 'psa' group. 
- made_purchase: A Boolean value representing whether or not the user made a purchase after seeing an advertisement. 
- days_with_most_add: A day of the month when the user saw the most ads. 
- peak ad hours: An hour of the day when the user saw the most ads. 
- ad_count: total number of ads seen by each user.

## 🧪 A/B Testing Methodology

1. Data Preprocessing and Cleaning :
   -  Checked for null values, duplicate values.
   -  No null or duplicate values found.

2.  Exploratory Data Analysis :
    - Checked distribution for customers per  group , ad count per group, purchase rate comparison between two group ,  ad count vs purchase made, 
        peak ad hours vs test group ,
    - calculated purchase rate per group

3. Define Hypothesis
   - Null Hypothesis  : there is no significant difference in sales between the 'ads' group  and the 'psa' group .
   - Alternate hypothesis : that the purchase rate in the 'ads' group is higher than in the 'psa' group

4. Statistical Test :
   - For this A/B testing , a two sample proportion z-test  due to large sample size and the target variable made_purchse is a binary variable.
   - If p value < 0.05 , we can reject null hypothesis else
     If p value > 0.05 , we accept the null hypothesis

5. Results:
   The result for  the z-test is :
   Z-statisitc: 10.590153051109288
   p-value: 3.310501343616513e-26   
   
   The p value is < 0.05 , we can reject the null hypothesis , there is significance difference in sales between the 'ads' group and the 'psa' group. The purchase rate
   in the 'ads' group is higher than in the 'psa' group.

## 📈 Key Insights

- The purchase rate of ads group was significantly higher than the 'psa' group.
- Online advertisement increases sales for the company .
- Advertisement has strong impact on the customer purchasing behavior .

## Project Conclusion

This project demonstrates how A/B testing evaluates advertisement performance and make data driven marketing decision.
   
    
   

