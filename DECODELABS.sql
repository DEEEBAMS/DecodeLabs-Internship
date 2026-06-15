SELECT * FROM sqldecodelabs.sqldecodelabs;

-- 1. COUNT OF ALL ORDERS
SELECT COUNT(OrderID)
FROM sqldecodelabs;

-- 2. COUNT OF UNIQUE CUSTOMERS WHO MADE PURCHASE
SELECT DISTINCT COUNT(CustomerID)
FROM sqldecodelabs;

-- 3. TOTAL REVENUE GENERATED
SELECT SUM(TotalPrice) AS TOTAL_REVENUE
FROM sqldecodelabs;

-- 4. AVERAGEORDERVALUE
SELECT SUM(TotalPrice)/Count(OrderID) as Average_Order_Value
FROM sqldecodelabs;

-- 5. most frequently ordered products
SELECT Product,
SUM(Quantity) As Quantity
FROM sqldecodelabs
Group by Product
order by Quantity Desc
limit 1;

-- PRODUCT WITH THE HIGHEST REVENUE
SELECT PRODUCT,
SUM(TotalPrice) as Revenue
FROM sqldecodelabs
group by Product
order by Revenue DESC
limit 1;


SELECT DISTINCT(TotalPrice)
FROM sqldecodelabs;

SELECT MAX(TotalPrice)
FROM sqldecodelabs;

-- 7 TOTAL REVENUE BY EACH PRODUCT
SELECT PRODUCT,
SUM(TotalPrice) as Revenue
FROM sqldecodelabs
group by Product
order by Revenue DESC;

-- 8 count of orders on each payment method
SELECT PaymentMethod,
COUNT(OrderID) AS COUNT_OF_ORDERS
FROM sqldecodelabs
GROUP BY PaymentMethod
ORDER BY COUNT_OF_ORDERS;

-- 9 AOV PER PAYMENT METHOD
SELECT PaymentMethod,
COUNT(OrderID) AS COUNT_OF_ORDERS,
SUM(TotalPrice)/COUNT(OrderID) AS AOV_PER_PAYMETHOD
FROM sqldecodelabs
GROUP BY PaymentMethod;

-- 10 COUNT OF ORDER PER ORDER STATUS
SELECT OrderStatus,
COUNT(OrderID) AS COUNT_OF_ORDERS
FROM sqldecodelabs
GROUP BY OrderStatus
ORDER BY COUNT_OF_ORDERS;

-- 11 TOTAL REVENUE BY EACH REFERRAL SOURCE
SELECT ReferralSource,
SUM(TotalPrice) As Revenue
FROM sqldecodelabs
GROUP BY ReferralSource
ORDER BY Revenue DESC;


-- 12 FREQUENCY OF COUPON USED
SELECT CouponCode,
count(OrderID) as Frequency
from sqldecodelabs
group by CouponCode
order by Frequency;

-- 13 ALL CANCELLED ORDER
SELECT COUNT(OrderID)
FROM sqldecodelabs
WHERE OrderStatus = "CANCELLED";

SELECT *
FROM sqldecodelabs
WHERE OrderStatus = "CANCELLED";

SELECT DISTINCT(PaymentMethod)
FROM sqldecodelabs;

-- 14 ORDERS PAID USIN GIFTCARD
SELECT *
from sqldecodelabs
WHERE PaymentMethod = "Gift Card";

SELECT count(OrderID)
from sqldecodelabs
WHERE PaymentMethod = "Gift Card";

-- 15 ORDERS WITH TOTAL PRICE > #1000
SELECT *
FROM sqldecodelabs
WHERE TotalPrice > 1000;

SELECT COUNT(OrderID)
FROM sqldecodelabs
WHERE TotalPrice > 1000;

-- 16 TOTAL QUANTITY SOLD
SELECT SUM(Quantity) as Total_Quantity_Sold
FROM sqldecodelabs;

-- ORDERS USED SAVE10 COUPONCODE
SELECT *
FROM sqldecodelabs
WHERE CouponCode = "SAVE10";

SELECT COUNT(OrderID)
FROM sqldecodelabs
WHERE CouponCode = "SAVE10";

-- REFERRAL SOURCE WITH THE MOOST REVENUE
SELECT ReferralSource,
SUM(TotalPrice) as Revenue
FROM sqldecodelabs
GROUP BY ReferralSource
ORDER BY Revenue DESC
LIMIT 1; 

-- PAYMENT METHOD WITH THE HIGHEST REVENUE
SELECT PaymentMethod,
SUM(TotalPrice) as Revenue
FROM sqldecodelabs
GROUP BY PaymentMethod
ORDER BY Revenue DESC 
LIMIT 1;

-- COUPON CODE WITH HIGHEST SALES
SELECT CouponCode,
SUM(Quantity) as Quantity
FROM sqldecodelabs
GROUP BY CouponCode
ORDER BY Quantity DESC 
LIMIT 1;

-- % OF ORDERS THAT USED A COUPON
SELECT COUNT(OrderID)
(891/1200)*100 AS Percentage_Coupon_Used
FROM sqldecodelabs;

SELECT CouponCode,
count(OrderID) as orderi
FROM sqldecodelabs
GROUP BY CouponCode
ORDER BY  orderi;

-- AVERAGE QUANTITY PER ORDER
SELECT 
ROUND (AVG(Quantity))AS AVG_QTY_PUR_PER_ORDER
from sqldecodelabs;

