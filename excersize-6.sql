
SELECT p.Name, MAX(sod.OrderQty) AS MaxOrderQty, soh.SalesOrderID
FROM Product p
JOIN SalesOrderDetail sod ON p.ProductID = sod.ProductID
JOIN SalesOrderHeader soh ON sod.SalesOrderID = soh.SalesOrderID
GROUP BY p.Name, soh.SalesOrderID;
