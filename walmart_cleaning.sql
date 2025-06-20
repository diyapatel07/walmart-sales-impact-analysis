SELECT * FROM walmart_sales.walmart_sales;
SELECT * FROM walmart_sales
WHERE Store IS NULL OR Date IS NULL OR Weekly_Sales IS NULL;
DELETE FROM walmart_sales
WHERE Store IS NULL OR Date IS NULL OR Weekly_Sales IS NULL;
SELECT DISTINCT Date FROM walmart_sales ORDER BY Date;
SELECT Store, Date, COUNT(*) AS count
FROM walmart_sales
GROUP BY Store, Date
HAVING count > 1;
DELETE FROM walmart_sales
WHERE (Store, Date) NOT IN (
  SELECT MIN(Store), Date
  FROM walmart_sales
  GROUP BY Store, Date
);
SELECT * FROM walmart_sales
WHERE Weekly_Sales < 0;
DELETE FROM walmart_sales
WHERE Weekly_Sales < 0;
ALTER TABLE walmart_sales
CHANGE COLUMN Holiday_Flag Is_Holiday TINYINT,
CHANGE COLUMN Weekly_Sales WeeklySales DECIMAL(15,2);
select from walmart_sales;







