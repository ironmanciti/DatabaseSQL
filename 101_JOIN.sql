-- sub-query를 이용한 두 table 연결

SELECT * FROM orders WHERE customer_id = 
    (
        SELECT id FROM customers
        WHERE last_name = '철수'
    );

-- Implicit Inner Join

SELECT first_name, last_name, order_date, amount 
	FROM customers, orders
	WHERE customers.id = orders.customer_id;

-- Explicit Inner Join
-- customers TABLE에서 선택하고 orders를 JOIN
SELECT first_name, last_name, order_date, amount 
	FROM customers
    JOIN orders
	ON customers.id = orders.customer_id;

-- order TABLE에서 선택하고 customers를 JOIN
SELECT * 
	FROM orders
    JOIN customers
	ON customers.id = orders.customer_id;

-- GROUP BY
SELECT first_name, last_name, SUM(amount) AS total_spent
	FROM orders
    JOIN customers
	ON customers.id = orders.customer_id
    GROUP BY orders.customer_id
    ORDER BY total_spent DESC;

-- LEFT JOIN
SELECT * FROM customers
    LEFT JOIN orders
	ON customers.id = orders.customer_id;

SELECT 
    first_name, last_name, IFNULL(SUM(amount), 0) AS total_spent
FROM customers
LEFT JOIN orders
	ON customers.id = orders.customer_id
GROUP BY customers.id
ORDER BY total_spent;

-- RIGHT JOIN
SELECT  FROM customers
    RIGHT JOIN orders
	ON customers.id = orders.customer_id;