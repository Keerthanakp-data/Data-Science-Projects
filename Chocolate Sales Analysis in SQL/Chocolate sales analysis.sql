SELECT * FROM choc_sales.sales;

###   Data Cleaning ##
# Removing leading trailing/spaces
UPDATE choc_sales.sales
SET 
    Country = TRIM(Country),
    Product = TRIM(Product);
    
# Converting amount from text to int
Update choc_sales.sales
set Amount = cast(REPLACE(REPLACE(Amount, '$', ''), ',', '') AS DECIMAL(10,2));

#Formatting date  
UPDATE choc_sales.sales
SET Date = STR_TO_DATE(Date, '%d-%b-%Y');

ALTER TABLE choc_sales.sales
MODIFY COLUMN Date DATE;

#Renaming column name
ALTER TABLE choc_sales.sales CHANGE `Boxes Shipped` Boxes_Shipped INT;

#Checking for duplicates
select Country, Product, Date, Amount, Boxes_Shipped , Count(*) from choc_sales.sales
group by Country, Product, Date, Amount, Boxes_Shipped 
having Count(*) > 1; 
#No duplicates found

#Checking missing values
SELECT 
    SUM(CASE WHEN Country IS NULL THEN 1 ELSE 0 END) AS missing_country,
    SUM(CASE WHEN Product IS NULL THEN 1 ELSE 0 END) AS missing_product,
    SUM(CASE WHEN Amount IS NULL THEN 1 ELSE 0 END) AS missing_amount,
    SUM(CASE WHEN Boxes_Shipped IS NULL THEN 1 ELSE 0 END) AS missing_boxes
FROM choc_sales.sales;
#No missing values found

###Exploratory Data Analysis####

##Business questions##

# Sales and Revenue#
# What are the total revenue over time ?

SELECT 
    EXTRACT(YEAR FROM Date) AS Year,
    EXTRACT(MONTH FROM Date) AS Month,
    Sum(Amount) as total_revenue
FROM choc_sales.sales
GROUP BY Year, Month
ORDER BY total_revenue desc;

#Highest selling chocolate
select Product  , sum(Boxes_Shipped) as total_sales
from choc_sales.sales
group by Product 
order by total_sales  desc ;

# Underperforming product 
select Product  , sum(Boxes_Shipped) as total_sales
from choc_sales.sales
group by Product 
order by total_sales  asc ;

# #Market & Customer Insights##
# Most revenue generating country
select Country, sum(Amount) as total_revenue 
from choc_sales.sales 
group by Country
order by total_revenue desc;

#Most selling chocolate across country

select Product, Country , sum(Boxes_Shipped) as total_sales
from choc_sales.sales
group by Product, Country
order by total_sales desc;

#Market share of each product within a country
select Country , Product, Sum(Boxes_Shipped) as total_sales,
ROUND(
        SUM(Boxes_Shipped) * 100.0 / SUM(SUM(Boxes_Shipped)) OVER (PARTITION BY Country), 
        2
    ) AS market_share_percent
from choc_sales.sales
where Country is not null
group by Country, Product
order by Country , market_share_percent;

#Most famous product in which region
select t.Product , t.Country, t.total_boxes from (

 select Product , Country , sum(Boxes_Shipped) as total_boxes ,
 Rank() over ( partition by Country Order by sum(Boxes_Shipped) Desc) as rnk
 from choc_sales.sales
 group by Country , Product
 ) t
 where t.rnk=1;

## Efficiency & Profitability
#Average selling price per box by product/country
 
select Product , Country , sum(Amount) as total_revenue , sum(Boxes_shipped) as total_boxes ,
ROUND(SUM(Amount) / NULLIF(SUM(Boxes_Shipped), 0), 2) as avg_price_per_box
from choc_sales.sales
group by Product, Country
order by Country, avg_price_per_box;

    


