CREATE SCHEMA Employee_performance;


CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100),
    region VARCHAR(50)
);

 -- Sales' Table
CREATE TABLE sales (
    transaction_id INT PRIMARY KEY,
    employee_id INT,
    sale_amount_usd DECIMAL(10,2),
    sale_amount_eur DECIMAL(10,2),
    sale_date DATE,
    closing_date DATE,
    FOREIGN KEY (employee_id) REFERENCES employees(employee_id)
);

-- Inserting records into Employees Table
INSERT INTO employees (employee_id, employee_name, region)
VALUES
(1, 'Dwayne Therockington', 'Asia'),
(2, 'Lionel Missi', 'South America'),
(3, 'Brontonio James', 'North America'),
(4, 'Marilyn Moremo', 'Europe'),
(5, 'Napoleon Bonafood', 'Europe'),
(6, 'Serena Pilliamson', 'North America'),
(7, 'Beyon Senoles', 'Africa'),
(8, 'Albert Tasteinstein', 'Asia'),
(9, 'Ada Loveleaves', 'Africa'),
(10, 'Walt Friesney', 'Europe'),
(11, 'Pablo Cheesecasso', 'South America'),
(12, 'Frieda Kahloaf', 'North America'),
(13, 'Virginia Phant', 'Asia'),
(14, 'Abraham Lunchin', 'North America'),
(15, 'Cleo Pasta', 'Africa'),
(16, 'Gordon Ramseats', 'Europe'),
(17, 'Julius Squeezer', 'Europe'),
(18, 'Aristotle Onaspork', 'Asia'),
(19, 'Vincent Van Dough', 'South America'),
(20, 'Charles Cello', 'North America'),
(21, 'Sylvia Plathcake', 'Europe'),
(22, 'Leonardo DiMunchi', 'South America'),
(23, 'Isaac Nuton', 'North America'),
(24, 'Cleopatra Spaghetti', 'Africa'),
(25, 'Winston Churchmeal', 'Europe'),
(26, 'Amelia Airplant', 'Asia'),
(27, 'Mozart Melon', 'Europe'),
(28, 'Eleanor Rigatoni', 'North America'),
(29, 'Plato Penne', 'Asia'),
(30, 'Georgia O\'Keeffsteak', 'South America'),
(31, 'Frank Lloyd Wriguini', 'North America'),
(32, 'Rosa Parkchop', 'Africa'),
(33, 'Nikola Teslawaffle', 'Europe'),
(34, 'Marie Curry', 'Asia'),
(35, 'William Shakesteak', 'Europe'),
(36, 'Amelia Earhartichoke', 'North America'),
(37, 'Martin Luther King Crab', 'North America'),
(38, 'Emily Brontortellini', 'Europe'),
(39, 'Galileo Galileioli', 'Asia'),
(40, 'Mona Lisagna', 'South America');


-- Inserting records into Sales' Table
INSERT INTO sales (transaction_id, employee_id, sale_amount_usd, sale_amount_eur, sale_date, closing_date)
VALUES
(1, 1, 500, 420, '2023-01-02', '2023-01-30'),
(2, 2, 650, 548, '2023-02-10', '2023-02-25'),
(3, 3, 800, 674, '2023-03-15', '2023-03-30'),
(4, 4, 700, 590, '2023-01-25', '2023-02-14'),
(5, 5, 900, 758, '2023-02-28', '2023-03-15'),
(6, 6, 850, 716, '2023-03-02', '2023-03-18'),
(7, 7, 600, 506, '2023-01-15', '2023-02-02'),
(8, 8, 950, 801, '2023-02-20', '2023-03-10'),
(9, 9, 700, 590, '2023-03-10', '2023-03-25'),
(10, 10, 1000, 843, '2023-01-12', '2023-01-31'),
(11, 11, 800, 674, '2023-02-12', '2023-02-28'),
(12, 12, 850, 716, '2023-03-14', '2023-03-30'),
(13, 13, 900, 758, '2023-01-22', '2023-02-11'),
(14, 14, 650, 548, '2023-02-25', '2023-03-13'),
(15, 15, 750, 633, '2023-03-03', '2023-03-21'),
(16, 16, 800, 674, '2023-01-16', '2023-02-05'),
(17, 17, 850, 716, '2023-02-19', '2023-03-08'),
(18, 18, 900, 758, '2023-03-11', '2023-03-29'),
(19, 19, 750, 633, '2023-01-20', '2023-02-08'),
(20, 20, 1000, 843, '2023-02-21', '2023-03-12'),
(21, 1, 800, 674, '2023-04-01', '2023-04-20'),
(22, 3, 650, 548, '2023-04-05', '2023-04-25'),
(23, 5, 700, 590, '2023-04-12', '2023-05-01'),
(24, 7, 900, 758, '2023-04-18', '2023-05-07'),
(25, 9, 850, 716, '2023-04-21', '2023-05-10'),
(26, 11, 1000, 843, '2023-04-24', '2023-05-13'),
(27, 13, 750, 633, '2023-04-26', '2023-05-15'),
(28, 15, 950, 801, '2023-04-29', '2023-05-18'),
(29, 17, 700, 590, '2023-05-03', '2023-05-22'),
(30, 3, 1000, 843, '2023-05-07', '2023-05-26'),
(31, 7, 800, 674, '2023-05-09', '2023-05-28'),
(32, 11, 850, 716, '2023-05-12', '2023-05-31'),
(33, 15, 900, 758, '2023-05-15', '2023-06-03'),
(34, 7, 650, 548, '2023-05-18', '2023-06-06'),
(35, 11, 750, 633, '2023-05-20', '2023-06-08'),
(36, 15, 800, 674, '2023-05-24', '2023-06-12'),
(37, 7, 850, 716, '2023-05-26', '2023-06-14'),
(38, 11, 900, 758, '2023-05-29', '2023-06-17'),
(39, 15, 750, 633, '2023-06-02', '2023-06-21'),
(40, 20, 1000, 843, '2023-06-05', '2023-06-24'),
(41, 4, 800, 674, '2023-06-08', '2023-06-26'),
(42, 8, 850, 716, '2023-06-11', '2023-06-29'),
(43, 12, 900, 758, '2023-06-15', '2023-07-03'),
(44, 16, 750, 633, '2023-06-18', '2023-07-06'),
(45, 20, 1000, 843, '2023-06-21', '2023-07-09'),
(46, 3, 800, 674, '2023-07-03', '2023-07-22'),
(47, 7, 650, 548, '2023-07-06', '2023-07-25'),
(48, 11, 700, 590, '2023-07-10', '2023-07-29'),
(49, 15, 900, 758, '2023-07-13', '2023-08-01'),
(50, 19, 850, 716, '2023-07-16', '2023-08-04'),
(51, 2, 1000, 843, '2023-07-19', '2023-08-07'),
(52, 6, 750, 633, '2023-07-22', '2023-08-10'),
(53, 10, 800, 674, '2023-07-25', '2023-08-13'),
(54, 14, 850, 716, '2023-07-28', '2023-08-16'),
(55, 18, 900, 758, '2023-07-31', '2023-08-19'),
(56, 1, 700, 590, '2023-08-04', '2023-08-22'),
(57, 5, 1000, 843, '2023-08-07', '2023-08-25'),
(58, 9, 800, 674, '2023-08-10', '2023-08-28'),
(59, 13, 850, 716, '2023-08-13', '2023-08-31'),
(60, 17, 900, 758, '2023-08-16', '2023-09-03');

SELECT * 
FROM employees;

SELECT * 
FROM sales;

/* EMPLOYEE PERFORMANCE METRICS*/
/*Question ONE
Who are the top-performing employees based on total sales amount?*/
-- To answer this question we will consider top sales interms of amounts in usd,therefore converting the usd to eur
-- 1 dollar=0.93 Euro
SELECT
employees.employee_name,
sales.employee_id,
round(SUM(sale_amount_usd*0.93 + sale_amount_eur),2) AS total_sales_amount_eur
FROM sales AS sales
JOIN employees AS employees
ON sales.employee_id = employees.employee_id
GROUP BY 
employees.employee_name,
sales.employee_id
ORDER BY total_sales_amount_eur  DESC
LIMIT 5;

--  What is the average sale amount for each employee?

SELECT
employees.employee_id,
employees.employee_name,
COALESCE(round(AVG(sales.sale_amount_usd + sales.sale_amount_eur * 0.93),2),0)AS average_sale_amount
FROM employees
LEFT JOIN sales
ON employees.employee_id = sales.employee_id
GROUP BY employees.employee_id, employees.employee_name
ORDER BY employees.employee_id;

-- Which employees have the highest number of sales transactions?

SELECT 
employees.employee_name,
COUNT(sales.transaction_id) AS number_of_sales_transactions
FROM sales
LEFT JOIN employees
ON sales.employee_id = employees.employee_id
GROUP BY 
employees.employee_name
HAVING 
COUNT(sales.transaction_id) = (
SELECT 
COUNT(sales.transaction_id)
FROM sales
LEFT JOIN  employees
ON sales.employee_id = employees.employee_id
GROUP BY employees.employee_name
ORDER BY COUNT(sales.transaction_id) DESC
LIMIT 1
    )
;

/*Are there employees with a few high-value sales or many smaller sales?
Employees with a few high-value sales (higher average transaction value) or 
many smaller sales (lower average transaction value).
USe Coalesce to replce nulls with 0*/
SELECT
employees.employee_name AS employee_name,
COUNT(sales.transaction_id) AS total_sales_count,
COALESCE(round(SUM(sales.sale_amount_usd * 0.93 + sales.sale_amount_eur ),2),0) AS total_sales_amount,
COALESCE(round(SUM(sales.sale_amount_usd * 0.93 + sales.sale_amount_eur ) / COUNT(sales.transaction_id),2),0) AS average_transaction_value
FROM employees AS employees
LEFT JOIN sales
ON employees.employee_id = sales.employee_id
GROUP BY employees.employee_name
ORDER BY average_transaction_value DESC;


/*Do specific employees excel during certain months(How has the sales performance of individual employees evolved over time?
)*/

SELECT 
employees.employee_name AS employee_name,
COALESCE(month(sales.sale_date),0) AS month_sale,
COALESCE(round(SUM(sales.sale_amount_usd * 0.93 + sales.sale_amount_eur ),2),0) AS total_sales_amount
FROM employees AS employees
LEFT JOIN  sales AS sales
ON employees.employee_id = sales.employee_id
GROUP BY employee_name,month_sale
ORDER BY employee_name,month_sale;


/*Sales Trends Analysis*/
-- What are the overall sales trends over time?
SELECT
month(sale_date) AS month_of_sale,  
SUM(sale_amount_usd) AS total_sales_usd,
SUM(sale_amount_eur) AS total_sales_eur
FROM sales
GROUP BY month_of_sale
ORDER BY month_of_sale;

--  Are there specific months or periods with higher sales?
SELECT
month(sale_date) AS monthly_period,
round(SUM(sale_amount_usd * 0.93 + sale_amount_eur),2) AS total_sales_amount
FROM sales
GROUP BY monthly_period
ORDER BY monthly_period;

-- How do the sales amounts in USD and EUR compare over time
SELECT
month(sale_date) AS month_of_sale,  
SUM(sale_amount_usd) AS total_sales_usd,
SUM(sale_amount_eur) AS total_sales_eur
FROM sales
GROUP BY month_of_sale
ORDER BY month_of_sale;

/*Regional Sales Patterns*/
-- Which regions have the highest total sales in USD and EUR?

SELECT 
employees.region AS region,
SUM(sale_amount_usd) AS total_sales_usd,
SUM(sale_amount_eur) AS total_sales_eur
FROM sales AS sales
LEFT JOIN employees  AS employees
ON sales.employee_id = employees.employee_id
GROUP BY region
ORDER BY 
total_sales_usd DESC ,
total_sales_eur DESC;

-- Are there differences in sales performance across regions
SELECT 
employees.region AS region,
round(SUM(sale_amount_usd * 0.93 + sale_amount_eur),2) AS total_sales_amount
FROM sales AS sales
LEFT JOIN employees AS employees
ON sales.employee_id = employees.employee_id
GROUP BY region
ORDER BY total_sales_amount DESC 
;

-- Are certain employees more successful in specific regions?
-- We measure success by the total sales of employees in the regions
SELECT 
employees.employee_name AS employee_name,
employees.region AS region,
round(SUM(sale_amount_usd * 0.93 + sale_amount_eur),2) AS total_sales_amount
FROM sales AS sales
LEFT JOIN employees AS employees
ON sales.employee_id = employees.employee_id
GROUP BY 
employee_name,
region
ORDER BY
employee_name,
total_sales_amount DESC;

-- Are there regions that are consistently underperforming?
-- Regions with total sales amounts below the average are considered underperforming.

WITH RegionAverage AS (
SELECT
employees.region AS region,
AVG(sales.sale_amount_usd + sales.sale_amount_eur * 0.93) AS average_transaction_value,
round(SUM(sale_amount_usd * 0.93 + sale_amount_eur),2) AS total_sales_amount
FROM sales as sales
LEFT JOIN employees as employees
ON employees.employee_id = sales.employee_id
GROUP BY region
)
SELECT
region,
average_transaction_value,
total_sales_amount
FROM
RegionAverage
WHERE
average_transaction_value > total_sales_amount;

/*Sales Conversion Rates*/
-- What is the average time between sale date and closing date for each employee?
SELECT 
employees.employee_name AS employee_name,
sales.sale_date AS sale_date,
sales.closing_date AS closing_date,
round(AVG(DATEDIFF(sales.closing_date,sales.sale_date)),2) AS average_days_betwn_sales
FROM sales as sales
LEFT JOIN employees as employees
ON employees.employee_id = sales.employee_id
GROUP BY employee_name;


/*Are there differences in conversion rates (closing time) between employees?
Shorter average closing times are likely to have better conversion rates than those with longer closing times*/
SELECT 
employees.employee_name AS employee_name,
sales.sale_date AS sale_date,
sales.closing_date AS closing_date,
round(AVG(DATEDIFF(sales.closing_date,sales.sale_date)),2) AS average_days_betwn_sales
FROM sales as sales
LEFT JOIN employees as employees
ON employees.employee_id = sales.employee_id
GROUP BY employee_name
ORDER BY average_days_betwn_sales;
