CREATE DATABASE DecodeLabs_Project3;

USE DecodeLabs_Project3;
CREATE TABLE Orders (
    OrderID VARCHAR(20) PRIMARY KEY,
    OrderDate DATE,
    CustomerID VARCHAR(20),
    Product VARCHAR(100),
    Quantity INT,
    UnitPrice DECIMAL(10,2),
    ShippingAddress VARCHAR(255),
    PaymentMethod VARCHAR(50),
    OrderStatus VARCHAR(50),
    TrackingNumber VARCHAR(100),
    ItemsInCart INT,
    CouponCode VARCHAR(50),
    ReferralSource VARCHAR(50),
    TotalPrice DECIMAL(10,2)
);
SELECT * FROM Orders;
SELECT OrderID, Product
FROM Orders;
SELECT COUNT(*) AS TotalOrders
FROM Orders;

SELECT AVG(TotalPrice) AS AverageOrderValue
FROM Orders;
SELECT MAX(TotalPrice) AS HighestOrder
FROM Orders;
SELECT MIN(TotalPrice) AS LowestOrder
FROM Orders;
SELECT SUM(TotalPrice) AS Revenue
FROM Orders;
SELECT *
FROM Orders
WHERE TotalPrice > 1000;
SELECT *
FROM Orders
WHERE PaymentMethod='Online';
SELECT *
FROM Orders
WHERE OrderStatus='Delivered';
SELECT *
FROM Orders
ORDER BY TotalPrice DESC;
SELECT *
FROM Orders
ORDER BY OrderDate;
SELECT Product,
SUM(TotalPrice) Revenue
FROM Orders
GROUP BY Product
ORDER BY Revenue DESC;
SELECT Product,
AVG(UnitPrice) AveragePrice
FROM Orders
GROUP BY Product;
SELECT Product,
SUM(Quantity) QuantitySold
FROM Orders
GROUP BY Product;
SELECT PaymentMethod,
COUNT(*) Orders
FROM Orders
GROUP BY PaymentMethod;
SELECT PaymentMethod,
SUM(TotalPrice) Revenue
FROM Orders
GROUP BY PaymentMethod;
SELECT ReferralSource,
COUNT(*) TotalOrders
FROM Orders
GROUP BY ReferralSource;
SELECT ReferralSource,
SUM(TotalPrice) Revenue
FROM Orders
GROUP BY ReferralSource
ORDER BY Revenue DESC;
SELECT Product,
SUM(TotalPrice) Revenue
FROM Orders
GROUP BY Product
ORDER BY Revenue DESC
LIMIT 5;
SELECT CustomerID,
SUM(TotalPrice) Revenue
FROM Orders
GROUP BY CustomerID
ORDER BY Revenue DESC
LIMIT 10;
SELECT Product,
SUM(TotalPrice) Revenue
FROM Orders
GROUP BY Product
HAVING Revenue >150000;
SELECT Product,
COUNT(*) Orders
FROM Orders
GROUP BY Product
HAVING Orders>150;
SELECT
MONTH(OrderDate) Month,
SUM(TotalPrice) Revenue
FROM Orders
GROUP BY MONTH(OrderDate)
ORDER BY Month;
SELECT OrderStatus,
COUNT(*) Orders
FROM Orders
GROUP BY OrderStatus;
SELECT 
    OrderStatus, SUM(TotalPrice) Revenue
FROM
    Orders
GROUP BY OrderStatus;
SELECT *
FROM Orders
WHERE UnitPrice>500;
SELECT *
FROM Orders
WHERE ItemsInCart>3;

SELECT

COUNT(*) TotalOrders,

COUNT(DISTINCT CustomerID) Customers,

SUM(TotalPrice) Revenue,

AVG(TotalPrice) AvgOrder,

MAX(TotalPrice) HighestOrder,

MIN(TotalPrice) LowestOrder

FROM Orders;



