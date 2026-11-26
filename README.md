# Decodelabs-Sales performance Analysis

This project involves analyzing 1,200 rows of sales data to uncover insights into sales performance,payment methods , and customer purchasing behavior. The analysis aims to identify key sales patterns, evaluate product performance, and provide data-driven recommendations to support improve sales,business growth and informed decision-making.

## Business questions 
1. What is the distribution of orders across different payment methods?
2.     How does the quantity of products ordered compare across different product categories?
3.     What is the overall price range across the different product categories?
4.     How does the order status distribution differ across product categories?
5. What proportion of recorded orders has been shipped, returned, cancelled, delivered, or remains pending?

## Dataset Overview 

Attribute	Description
Dataset	Sales Performance Analysis 
Records	1,200 customers 
Tool	Excel,MySQLPowerBI
Key columns	CustomerID,products,quantity,unit price, payment method,order status.
Data source	Decode labs.


## Tool and technologies 

* excel: Data cleaning, Data exploration, answering business questions 
* MySQL: Data exploration, answering business questions 
* PowerBI: visualization 
* GitHub:project documentation 

## Data cleaning and preparation 

* Removed duplicates
* Checked for missing values 
* Verified data types
* Converted numerical fields to appropriate data types
* Standardized column names

## Analysis and SQL Queries 
```sql


* Number of orders and their order status.
Select
(Order_status),count(order_id) as number _of_order_status
From internship_project
Group by order_status
Order by 2;

* Minimum and maximum quantity ordered
Select *
From internship_project;
Select max(quantity)
From internship_project;
Select min(quantity)
From internship_project;


* Minimum,maximum and average price of a product.
Select *
From internship_project;
Alter table internship_project
Add column unit_price_num decimal(10);
Select *
From internship_project;
Update internship_project 
Set unit_price_num=cast(
Replace(unit_price,’$’,’’) as decimal(10));

Select unit_price,unit_price_num
From internship_project;
Select
Product,max(unit_price_num)
From internship_project
Group by product 
Order by 2;

Select
Product,min(unit_price_num)
From internship_project
Group by product 
Order by 2;

Select
Product,avg(unit_price_num)
From internship_project
Group by product 
Order by 2;

```


## Key findings 
* Majority of the orders were cancelled 
* Most orders by cash were returned 
* Most orders by gift card and online were being shipped.
* Though printer ($12-$697) and tablets ($17-$700) are costly products, a lot of people are still ordering them and they are being shipped(42,40 respectively).
* Chairs were the most ordered item but most of it was cancelled (45).

## Business Recommendations 
* Investigate the high number of cancelled orders.
* Review cash payment transactions.
* Maintain and improve gift cards and online payment services.
* Maintain the availability of printers and tablets.
* Investigate cancellations of chair orders.



## Conclusion

This sales performance analysis provided valuable insights into order performance,customer purchasing habits,product demand, and payment method . The analysis revealed high order cancellations, notable returns for cash payments, and strong demand for chairs, printers, and tablets. These insights highlight opportunities to reduce cancellations, improve order fulfilment, and enhance sales performance.
