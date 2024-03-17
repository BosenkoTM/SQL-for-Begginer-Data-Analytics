-- -- Рассчитать общий объем продаж за все месяцы 2018 года, используя функцию SUM

SELECT sales_transaction_date::DATE,
SUM(sales_amount) as total_sales_amount
FROM sales
WHERE sales_transaction_date>='2018-01-01'
AND sales_transaction_date<'2019-01-01'
GROUP BY 1
ORDER BY 1;

-- Теперь рассчитайте скользящее среднее значение за 30 дней для ежедневного количества сделок купли-продажи, используя window frame

WITH daily_deals as (
SELECT sales_transaction_date::DATE,
COUNT(*) as total_deals
FROM sales
GROUP BY 1
),

moving_average_calculation_30 AS (
SELECT sales_transaction_date, total_deals,
AVG(total_deals) OVER (ORDER BY sales_transaction_date ROWS BETWEEN 30 PRECEDING and CURRENT ROW) AS deals_moving_average,
ROW_NUMBER() OVER (ORDER BY sales_transaction_date) as row_number
FROM daily_deals
ORDER BY 1)

SELECT sales_transaction_date,
CASE WHEN row_number>=30 THEN deals_moving_average ELSE NULL END
   AS deals_moving_average_30
FROM moving_average_calculation_30
WHERE sales_transaction_date>='2018-01-01' AND sales_transaction_date<'2019-01-01';

-- Затем рассчитать, в каком дециле будет находиться каждый дилерский центр по сравнению с другими дилерскими центрами на основе общего объема продаж, используя оконные функции.

WITH total_dealership_sales AS
(
SELECT dealership_id,
SUM(sales_amount) AS total_sales_amount
FROM sales
WHERE sales_transaction_date>='2018-01-01'
AND sales_transaction_date<'2019-01-01'
AND channel='dealership'
GROUP BY 1
)

SELECT *,
NTILE(10) OVER (ORDER BY total_sales_amount)
FROM total_dealership_sales;
