-- Total revenue
SELECT SUM(price * quantity) AS total_revenue
FROM orders;

-- Top 5 products by revenue
SELECT product_name,
       SUM(price * quantity) AS revenue
FROM orders
GROUP BY product_name
ORDER BY revenue DESC
LIMIT 5;

-- Monthly revenue trend
SELECT DATE_TRUNC('month', order_date) AS month,
       SUM(price * quantity) AS revenue
FROM orders
GROUP BY month
ORDER BY month;
