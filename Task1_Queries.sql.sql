USE superstore;
GO

SELECT COUNT(*) AS Total_Rows FROM orders

--2
USE superstore;
GO

SELECT 
    Region, 
    ROUND(SUM(Sales), 0) AS Total_Sales,
    ROUND(SUM(Profit), 0) AS Total_Profit
FROM orders
GROUP BY Region
ORDER BY Total_Profit DESC;