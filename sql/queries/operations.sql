--Some operations on our database:

--Retrieve the order IDs and the number of unique products included in each order.
SELECT order_id, COUNT(DISTINCT item_id) AS unique_items
FROM order_details
GROUP BY order_id;


--Retrieve the total quantity of each product sold.
SELECT SUM(order_details.qty) AS total_quantity, items.item_name
FROM order_details 
JOIN items
ON items.item_id = order_details.item_id
GROUP BY items.item_id; 


--Retrieve the order details (order ID, product name, quantity) for orders with a quantity greater than the average quantity of all orders.
SELECT order_details.qty, order_details.order_id, items.item_name
FROM order_details 
JOIN items
ON items.item_id = order_details.item_id
WHERE qty > (SELECT AVG(qty) FROM order_details);


--Retrieve the total number of products sold for each month in the year 2023. Display the month along with the total number of products where the total number of products sold was greater than 2.
SELECT EXTRACT(MONTH FROM order_date), SUM(qty) AS total_items_sold
FROM orders 
JOIN order_details
ON orders.order_id = order_details.order_id
WHERE EXTRACT(YEAR FROM order_date) = 2023
GROUP BY EXTRACT(MONTH FROM order_date)
HAVING SUM(qty) > 2;


--Retrieve the order IDs and the order price based on the following criteria:

--a. If the price > 800 then ‘High Value’

--b. If it is less than 800 then ‘Low Value’

--c. Output should be — order IDs, order price and Value
SELECT order_id, order_price,
 CASE 
  WHEN order_price < 800
  THEN 'Low Value'
  ELSE 'High Value'
 END AS value
FROM order_details;
