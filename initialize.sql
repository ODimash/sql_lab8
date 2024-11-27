
-- Создание и инициализация таблиц для лабораторной работы №8

-- Таблица сотрудников
CREATE TABLE Employee (
    EmployeeID INT PRIMARY KEY,
    FirstName NVARCHAR(50),
    LastName NVARCHAR(50)
);

INSERT INTO Employee (EmployeeID, FirstName, LastName) VALUES
(1, 'John', 'Doe'),
(2, 'Jane', 'Smith'),
(3, 'Emily', 'Jones');

-- Таблица заказов
CREATE TABLE SalesOrderHeader (
    SalesOrderID INT PRIMARY KEY,
    OrderDate DATE,
    ShipMethodID INT
);

INSERT INTO SalesOrderHeader (SalesOrderID, OrderDate, ShipMethodID) VALUES
(1, '2024-01-01', 1),
(2, '2024-01-02', 2),
(3, '2024-01-03', 1);

-- Таблица деталей заказов
CREATE TABLE SalesOrderDetail (
    SalesOrderDetailID INT PRIMARY KEY,
    SalesOrderID INT,
    ProductID INT,
    OrderQty INT,
    UnitPrice DECIMAL(10, 2)
);

INSERT INTO SalesOrderDetail (SalesOrderDetailID, SalesOrderID, ProductID, OrderQty, UnitPrice) VALUES
(1, 1, 1, 10, 100.00),
(2, 2, 2, 20, 200.00),
(3, 3, 3, 5, 300.00),
(4, 1, 2, 15, 150.00),
(5, 2, 1, 10, 100.00),
(6, 3, 2, 25, 250.00);

-- Таблица товаров
CREATE TABLE Product (
    ProductID INT PRIMARY KEY,
    Name NVARCHAR(100),
    ListPrice DECIMAL(10, 2)
);

INSERT INTO Product (ProductID, Name, ListPrice) VALUES
(1, 'Product A', 150.00),
(2, 'Product B', 200.00),
(3, 'Product C', 300.00);

-- Таблица методов доставки
CREATE TABLE ShipMethod (
    ShipMethodID INT PRIMARY KEY,
    ShipBase DECIMAL(10, 2)
);

INSERT INTO ShipMethod (ShipMethodID, ShipBase) VALUES
(1, 50.00),
(2, 75.00);
