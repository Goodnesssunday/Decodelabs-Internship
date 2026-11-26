select *
from internship_project;

-- project 3

select count(distinct order_id)
from internship_project;
-- 1200 rows

select distinct product
from internship_project;
-- 6 products sold

select distinct Payment_Method
from internship_project;
-- 5 payment methods

select distinct Order_Status
from internship_project;
-- order status(5 statuses)

select distinct Referral_Source
from internship_project;
-- 5 referral sources

select *
from internship_project;
select 
sum(total_price) 
from internship_project;
select 
sum(total_price) as total_revenue
from internship_project
where order_status= "shipped"
or "delivered";
-- total revenue = $63,444
select *
from internship_project;
select
(payment_method), count(Unit_Price) as number_of_orders
from internship_project
group by payment_method
order by 2;
-- number of orders made by each payment method
select
(order_status), count(order_id)  as number_of_order_status
from internship_project
group by order_status
order by 2;
-- number of orders and their status

select *
from internship_project;
select max(Quantity)
from internship_project;
select min(Quantity)
from internship_project;
-- min and max quantity ordered

select *
from internship_project;
alter table internship_project
add column unit_price_num decimal(10);
select * 
from internship_project;
update internship_project
set unit_price_num = cast(
replace(unit_price,'$','')as decimal(10));
select unit_price,unit_price_num
from internship_project;
select 
Product,max(Unit_Price_num)
from internship_project
group by Product
order by 2;
select
product, min(Unit_Price_num)
from internship_project
group by product
order by 2;
select Product,avg(Unit_Price_num)
from internship_project
group by Product
order by 2;
-- max,min and average price of a product.
 
select *
from internship_project;
alter table  internship_project
drop column `My_Unknown_Column_[1]`;
alter table  internship_project
drop column `My_Unknown_Column_[2]`;
alter table  internship_project
drop column `My_Unknown_Column`;
alter table  internship_project
drop column `My_Unknown_Column_[3]`;
alter table  internship_project
drop column `My_Unknown_Column_[4]`;
-- null columns deleted. 