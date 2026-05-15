-- Total Revenue
SELECT SUM(sales_amount) AS total_revenue
FROM ecommerce_sales;

-- Monthly Revenue
SELECT month, SUM(sales_amount) AS monthly_revenue
FROM ecommerce_sales
GROUP BY month
ORDER BY monthly_revenue DESC;

-- Top Selling Products
SELECT product_name, SUM(quantity) AS total_quantity
FROM ecommerce_sales
GROUP BY product_name
ORDER BY total_quantity DESC;

-- Sales by Category
SELECT category, SUM(sales_amount) AS category_sales
FROM ecommerce_sales
GROUP BY category
ORDER BY category_sales DESC;
