
SELECT p.Name, COUNT(sod.SalesOrderDetailID) AS OrderCount
FROM Product p
JOIN SalesOrderDetail sod ON p.ProductID = sod.ProductID
GROUP BY p.Name
HAVING COUNT(sod.SalesOrderDetailID) > 50;
