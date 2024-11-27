
SELECT p.Name, sod.OrderQty, soh.SalesOrderID
FROM Product p
JOIN SalesOrderDetail sod ON p.ProductID = sod.ProductID
JOIN SalesOrderHeader soh ON sod.SalesOrderID = soh.SalesOrderID
WHERE (p.ProductID, sod.OrderQty) IN (
    SELECT ProductID, MAX(OrderQty)
    FROM SalesOrderDetail
    GROUP BY ProductID
);
