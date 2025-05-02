/* Question 1
Creating Table Orders */
CREATE TABLE Orders (
orderId INT PRIMARY KEY AUTO_INCREMENT,
customerName VARCHAR(100)
);


-- Creating Table Order Products
CREATE TABLE OrderProducts (
orderId INT PRIMARY KEY AUTO_INCREMENT,
productName VARCHAR(100),
FOREIGN KEY (orderId) REFERENCES Orders(orderId)
);

/* Question 2
Creating Orders Table to store customer details per order */
CREATE TABLE Orders (
    orderID INT PRIMARY KEY,
    customerName VARCHAR(100)
);

-- Creating OrderItems Table to store products per order
CREATE TABLE OrderItems (
    orderID INT,
    product VARCHAR(100),
    quantity INT,
    PRIMARY KEY (OrderID, Product),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);