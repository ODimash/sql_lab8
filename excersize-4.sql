
SELECT p.Name, p.ListPrice
FROM Product p
JOIN (
    SELECT ProductID, AVG(ListPrice) AS AvgPrice
    FROM Product
    GROUP BY ProductID
) avgPrices ON p.ProductID = avgPrices.ProductID
WHERE p.ListPrice > avgPrices.AvgPrice;
