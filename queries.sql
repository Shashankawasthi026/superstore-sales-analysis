CREATE DATABASE sales_project;
USE sales_project;
CREATE TABLE sales (
    order_id VARCHAR(50),
    order_date DATE,
    customer_name VARCHAR(100),
    region VARCHAR(50),
    category VARCHAR(50),
    sales DECIMAL(10,2),
    quantity INT,
    profit DECIMAL(10,2),
    discount DECIMAL(5,2)
);
SELECT * FROM sales;
Drop table sales;
SELECT * FROM `sample - superstore` LIMIT 1000;
RENAME TABLE `sample - superstore` TO sales;
SELECT * FROM sales;

SELECT region, SUM(sales) AS total_sales
FROM sales
GROUP BY region;


SELECT category, SUM(profit) AS total_profit
FROM sales
GROUP BY category
ORDER BY total_profit DESC;


SELECT discount, AVG(profit)
FROM sales
GROUP BY discount;