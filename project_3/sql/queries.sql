-- PROJECT 3 : SQL DATA ANALYSIS
-- 1. View all records
SELECT *
FROM orders;
-- 2. Count total orders
SELECT COUNT(*) AS TotalOrders
FROM orders;
-- 3. Total Revenue
SELECT SUM(TotalPrice) AS TotalRevenue
FROM orders;
-- 4. Average Order Value
SELECT AVG(TotalPrice) AS AverageOrderValue
FROM orders;
-- 5. Orders Above 2000
SELECT *
FROM orders
WHERE TotalPrice > 2000;
-- 6. Sort Orders by Total Price (Highest First)
SELECT OrderID,
  Product,
  TotalPrice
FROM orders
ORDER BY TotalPrice DESC;
-- 7. Payment Method Analysis
SELECT PaymentMethod,
  COUNT(*) AS TotalOrders
FROM orders
GROUP BY PaymentMethod;
-- 8. Referral Source Analysis
SELECT ReferralSource,
  COUNT(*) AS TotalOrders
FROM orders
GROUP BY ReferralSource;
-- 9. Revenue by Referral Source
SELECT ReferralSource,
  SUM(TotalPrice) AS Revenue
FROM orders
GROUP BY ReferralSource
ORDER BY Revenue DESC;
-- 10. Top Products Analysis
SELECT Product,
  COUNT(*) AS Sales
FROM orders
GROUP BY Product
ORDER BY Sales DESC;