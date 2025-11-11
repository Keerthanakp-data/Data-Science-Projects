## 📘 Project Overview
This is a simple SQL project to analyze chocolate sales around the world to uncover  business insigts auch as top performing product, region and customer trends

## 🗄️ Dataset
- **File:** `Chocolate Sales.csv`
- **Fields:** Country, Product , Date , Amount , Boxes Shipped

## ⚙️ SQL Concepts Used
- Window Functions (RANK, ROW_NUMBER)
- Aggregate Functions (SUM, COUNT, AVG)
- CTEs and Subqueries
  
## 🧩 Tools Used
- MySQL Workbench
- Excel (for data preview)

## 🧠 Key Objectives
Data cleaning - trimming spaces , setting the amount in correct format, formatting date, checking for duplicate values,
checking for missing values .

Exploratory data analysis:
#Sales and Revenue

1. Highest Selling Chocolate
   
-select Product  , sum(Boxes_Shipped) as total_sales
from choc_sales.sales
group by Product 
order by total_sales  desc ;

2.Most Underperforming/underselling  Product

-select Product  , sum(Boxes_Shipped) as total_sales
from choc_sales.sales
group by Product 
order by total_sales  asc ;

3.Total Revenue Over Time

-SELECT 
    EXTRACT(YEAR FROM Date) AS Year,
    EXTRACT(MONTH FROM Date) AS Month,
    Sum(Amount) as total_revenue
FROM choc_sales.sales
GROUP BY Year, Month
ORDER BY total_revenue desc;

#Market and Customer Insights

4.Top Selling Chocolate Across Country

-select Product, Country , sum(Boxes_Shipped) as total_sales
from choc_sales.sales
group by Product, Country
order by total_sales desc;

5.Most Revenue Generating Country
select Country, sum(Amount) as total_revenue 
from choc_sales.sales 
group by Country
order by total_revenue desc;

6.Market share of each product within a country

-select Country , Product, Sum(Boxes_Shipped) as total_sales,
ROUND(
        SUM(Boxes_Shipped) * 100.0 / SUM(SUM(Boxes_Shipped)) OVER (PARTITION BY Country), 
        2
    ) AS market_share_percent
from choc_sales.sales
where Country is not null
group by Country, Product
order by Country , market_share_percent;

7.Most famous product by region

-select t.Product , t.Country, t.total_boxes from (

 select Product , Country , sum(Boxes_Shipped) as total_boxes ,
 Rank() over ( partition by Country Order by sum(Boxes_Shipped) Desc) as rnk
 from choc_sales.sales
 group by Country , Product
 ) t
 where t.rnk=1;

 #Efficiency & Profitability
 
 8.Average selling price per box by product/country
 
- select Product , Country , sum(Amount) as total_revenue , sum(Boxes_shipped) as total_boxes ,
ROUND(SUM(Amount) / NULLIF(SUM(Boxes_Shipped), 0), 2) as avg_price_per_box
from choc_sales.sales
group by Product, Country
order by Country, avg_price_per_box;

## 📈 Key Insights

*1.The top selling chocolate is 50% Dark Bites with total sales of 9792 .

*2.Choco coated almonds emerged to be the least selling product.

*3.January had the most sales in the year 2022.

*4.In Australia the top selling product was 50% dark bites , in New Zealand- Mint Chip Choco,Choco Coated Almonds topped in Canada followed by Smooth Silky Salty, whereas in Uk Milk Bars had most sales 
followed by Caramel Stuffed Bars,Fruit & Nut Bars in USA and finally Spicy Special Slims in India.

*5. Australia generated the most chocolate sales revenue followed by UK and India and New Zealand the least sales .

*8. Choco Coated Almonds found to be expensive as its average selling price per box was higher in USA compared to other countries.
Whereas 70% Dark Bites had the least average selling price in Australia
 

