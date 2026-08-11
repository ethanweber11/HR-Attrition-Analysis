--Creating table for data import and drop and whole data view functions
SELECT * FROM coffee_sales;
DROP TABLE coffee_sales;
CREATE TABLE coffee_sales (transaction_id int, transaction_date date, transaction_time time, transaction_qty int, 
							store_id int, store_location text, product_id int, unit_price float, product_category text,
							product_type text, product_detail text);





--Adding hour and day of week variables
ALTER TABLE coffee_sales
ADD COLUMN transaction_hour int,
ADD COLUMN day_of_week text;

UPDATE coffee_sales
SET
    transaction_hour = EXTRACT(HOUR FROM transaction_time)::int,
    day_of_week = TRIM(TO_CHAR(transaction_date, 'Day'));

--Creating revenue column
ALTER TABLE coffee_sales
ADD COLUMN revenue numeric
GENERATED ALWAYS AS (unit_price * transaction_qty) STORED;







--Total product sales
SELECT sum(transaction_qty) AS "Total product sales"
	FROM coffee_sales;

--Total revenue
SELECT sum(revenue) AS "Total Revenue"
	FROM coffee_sales;

--Average revenue per purchase
SELECT avg(purchase_revenue) AS "Average Revenue per purchase"
FROM (
	SELECT store_id, transaction_date, transaction_time, sum(revenue) AS purchase_revenue
	FROM coffee_sales
	GROUP BY
		store_id,
		transaction_date,
		transaction_time
) AS purchasess;

--Average products purchased per transaction
SELECT avg(purchase_qty) AS "Average transaction quantity"
FROM (
	SELECT store_id, transaction_date, transaction_time, sum(transaction_qty) AS purchase_qty
	FROM coffee_sales
	GROUP BY store_id, transaction_date, transaction_time
) AS purchases;





--Highest performing hours of the day
SELECT transaction_hour, sum(revenue) AS total_revenue, sum(transaction_qty) AS total_products_sold
	FROM coffee_sales
	GROUP BY transaction_hour
	ORDER BY total_revenue 
	LIMIT 10 DESC;

--Highest performing days
SELECT day_of_week, sum(revenue) AS total_revenue, sum(transaction_qty) AS total_products_sold
	FROM coffee_sales
	GROUP BY day_of_week
	ORDER BY total_revenue DESC;





--Total revenue by store location
SELECT store_location AS "Location", sum(revenue) AS "Total Revenue"
	FROM coffee_sales
	GROUP BY store_location
	ORDER BY sum(revenue) DESC;

--Number of products sold per location
SELECT store_location AS "Location", sum(transaction_qty)
	FROM coffee_sales
	GROUP BY store_location
	ORDER BY sum(transaction_qty) DESC;





--Total revenue by product category
SELECT product_category AS "Product Category", sum(revenue) AS "Total Revenue"
	FROM coffee_sales
	GROUP BY product_category
	ORDER BY sum(revenue) DESC;






--Top 10 total revenue product types
SELECT product_type AS "Product Type", sum(revenue) AS "Total Revenue"
	FROM coffee_sales
	GROUP BY product_type
	ORDER BY sum(revenue) DESC
	LIMIT 10;

--Total revenue by coffee type
SELECT product_type AS "Product Type", sum(revenue) AS "Total Revenue"
	FROM coffee_sales
	WHERE product_category = 'Coffee'
	GROUP BY product_type
	ORDER BY sum(revenue) DESC;

--Total revenue by tea type
SELECT product_type AS "Product Type", sum(revenue) AS "Total Revenue"
	FROM coffee_sales
	WHERE product_category = 'Tea'
	GROUP BY product_type
	ORDER BY sum(revenue) DESC;

--Total revenue by bakery item type
SELECT product_type AS "Product Type", sum(revenue) AS "Total Revenue"
	FROM coffee_sales
	WHERE product_category = 'Bakery'
	GROUP BY product_type
	ORDER BY sum(revenue) DESC;





--Revenue by coffee item types
SELECT product_detail AS "Product Detail", sum(revenue) AS "Total Revenue"
	FROM coffee_sales
	WHERE product_type = 'Barista Espresso'
	GROUP BY product_detail
	ORDER BY sum(revenue) DESC;

SELECT product_detail AS "Product Detail", sum(revenue) AS "Total Revenue"
	FROM coffee_sales
	WHERE product_type = 'Gourmet brewed coffee'
	GROUP BY product_detail
	ORDER BY sum(revenue) DESC;

SELECT product_detail AS "Product Detail", sum(revenue) AS "Total Revenue"
	FROM coffee_sales
	WHERE product_type = 'Premium brewed coffee'
	GROUP BY product_detail
	ORDER BY sum(revenue) DESC;

SELECT product_detail AS "Product Detail", sum(revenue) AS "Total Revenue"
	FROM coffee_sales
	WHERE product_type = 'Organic brewed coffee'
	GROUP BY product_detail
	ORDER BY sum(revenue) DESC;

SELECT product_detail AS "Product Detail", sum(revenue) AS "Total Revenue"
	FROM coffee_sales
	WHERE product_type = 'Drip coffee'
	GROUP BY product_detail
	ORDER BY sum(revenue) DESC;





--Revenue by tea item types
SELECT product_detail AS "Product Detail", sum(revenue) AS "Total Revenue"
	FROM coffee_sales
	WHERE product_type = 'Brewed Chai tea'
	GROUP BY product_detail
	ORDER BY sum(revenue) DESC;

SELECT product_detail AS "Product Detail", sum(revenue) AS "Total Revenue"
	FROM coffee_sales
	WHERE product_type = 'Brewed Black tea'
	GROUP BY product_detail
	ORDER BY sum(revenue) DESC;

SELECT product_detail AS "Product Detail", sum(revenue) AS "Total Revenue"
	FROM coffee_sales
	WHERE product_type = 'Brewed herbal tea'
	GROUP BY product_detail
	ORDER BY sum(revenue) DESC;

SELECT product_detail AS "Product Detail", sum(revenue) AS "Total Revenue"
	FROM coffee_sales
	WHERE product_type = 'Brewed Green tea'
	GROUP BY product_detail
	ORDER BY sum(revenue) DESC;





--Revenue by bakery item types
SELECT product_detail AS "Product Detail", sum(revenue) AS "Total Revenue"
	FROM coffee_sales
	WHERE product_type = 'Scone'
	GROUP BY product_detail
	ORDER BY sum(revenue) DESC;

SELECT product_detail AS "Product Detail", sum(revenue) AS "Total Revenue"
	FROM coffee_sales
	WHERE product_type = 'Pastry'
	GROUP BY product_detail
	ORDER BY sum(revenue) DESC;

SELECT product_detail AS "Product Detail", sum(revenue) AS "Total Revenue"
	FROM coffee_sales
	WHERE product_type = 'Biscotti'
	GROUP BY product_detail
	ORDER BY sum(revenue) DESC;





--Lowest revenue section
SELECT product_category, sum(revenue) AS "Total Revenue"
	FROM coffee_sales
	GROUP BY product_category
	ORDER BY sum(revenue) ASC;

SELECT product_type, sum(revenue) AS "Total Revenue"
	FROM coffee_sales
	GROUP BY product_category, product_type
	ORDER BY sum(revenue) ASC
	LIMIT 20;

SELECT product_detail, sum(revenue) AS "Total Revenue"
	FROM coffee_sales
	GROUP BY product_category, product_detail
	ORDER BY sum(revenue) ASC
	LIMIT 20;




