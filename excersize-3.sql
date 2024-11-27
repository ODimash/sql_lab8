
SELECT Name, ListPrice
FROM Product
WHERE ListPrice > (SELECT AVG(ListPrice) FROM Product);
