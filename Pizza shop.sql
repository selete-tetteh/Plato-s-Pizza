-- Join all tables into one
SELECT *
FROM orders o
JOIN order_details od ON o.order_id = od.order_id
JOIN pizzas p ON od.pizza_id = p.pizza_id
JOIN pizza_types pt ON p.pizza_type_id = pt.pizza_type_id;

-- Create new table from joined tables
DROP TABLE IF EXISTS pizza_order
CREATE TABLE pizza_order (
    order_id int,
    date date,
    time time,
    order_details_id int,
    pizza_id varchar(100),
    quantity int,
    pizza_type_id varchar(100),
    size varchar(50),
    price float,
    name varchar(50),
    category varchar(50),
    ingredients varchar(max)
);

INSERT INTO pizza_order
SELECT o.order_id, o.date, o.time, od.order_details_id, od.pizza_id, 
od.quantity, p.pizza_type_id, p.size, p.price, pt.name, pt.category, pt.ingredients
FROM orders o
JOIN order_details od ON o.order_id = od.order_id
JOIN pizzas p ON od.pizza_id = p.pizza_id
JOIN pizza_types pt ON p.pizza_type_id = pt.pizza_type_id;

-- View new table
SELECT * 
FROM pizza_order


-- Find busiest day
SELECT 
    DATENAME(weekday, date) AS day_of_week,
    COUNT(*) AS num_orders
FROM 
    pizza_order
GROUP BY 
    DATENAME(weekday, date)
ORDER BY 
    num_orders DESC;


--find busiest time
SELECT 
    DATEPART(HOUR, datetime) AS hour,
    COUNT(*) AS num_orders
FROM (
    SELECT 
        DATEADD(MINUTE, DATEPART(HOUR, time) * 60 + DATEPART(MINUTE, time), CAST(date AS DATETIME)) AS datetime
    FROM 
        pizza_order
) t
GROUP BY 
    DATEPART(HOUR, datetime)
ORDER BY 
    num_orders DESC;


-- Find number of pizzas being sold during peak hours
SELECT 
    DATEPART(HOUR, time) AS hour_of_day,
    SUM(quantity) AS total_pizzas
FROM 
    pizza_order
GROUP BY 
    DATEPART(HOUR, time)
ORDER BY 
    total_pizzas DESC;


--Order pizzas from Best to Worst Selling Pizzas
SELECT 
    name AS pizza_name, 
    SUM(quantity) AS total_sold
FROM 
    pizza_order

GROUP BY 
        name
ORDER BY 
    total_sold DESC;




--Order pizzas from Best to Worst Selling Pizzas Acoording to size
SELECT 
    size AS pizza_size, 
    SUM(quantity) AS total_sold
FROM 
    pizza_order

GROUP BY 
        size
ORDER BY 
    total_sold DESC;





--Show only the best and worst selling pizzas
SELECT 
    name AS pizza_name, 
    SUM(quantity) AS total_sold
FROM 
    pizza_order
GROUP BY 
        name
HAVING 
    SUM(quantity) = (SELECT MAX(total_sold) FROM (
                            SELECT SUM(quantity) AS total_sold
                            FROM pizza_order
                            GROUP BY name
                        ) AS sales_by_pizza
                       )
    OR
    SUM(quantity) = (SELECT MIN(total_sold) FROM (
                            SELECT SUM(quantity) AS total_sold
                            FROM pizza_order
                            GROUP BY name
                        ) AS sales_by_pizza
                       )



--Average Pizza order
SELECT 
    AVG(order_total) AS avg_order_value
FROM (
    SELECT 
        order_id,
        SUM(quantity * price) AS order_total
    FROM 
        pizza_order
    GROUP BY 
        order_id
) AS order_totals


--Seat Utilization
SELECT 
    ROUND(100.0 * AVG(num_customers * 1.0) / (15 * 4), 2) AS seat_utilization_rate
FROM (
    SELECT 
        order_id,
        COUNT(*) AS num_customers
    FROM 
        pizza_order
    GROUP BY 
        order_id
) AS order_counts