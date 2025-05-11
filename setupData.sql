
-- Insert into Guitar
INSERT INTO Guitar VALUES
(1, 'Fender', 'Stratocaster', 'Electric', 1200.00, 5, 'New'),
(2, 'Gibson', 'Les Paul', 'Electric', 2500.00, 2, 'New'),
(3, 'Taylor', '314ce', 'Acoustic', 1800.00, 3, 'Used'),
(4, 'Yamaha', 'FG800', 'Acoustic', 200.00, 10, 'New'),
(5, 'Ibanez', 'SR300', 'Bass', 450.00, 1, 'Damaged');

-- Insert into Customer
INSERT INTO Customer VALUES
(1, 'Alice', 'Johnson', 'alice@example.com', '555-1234'),
(2, 'Bob', 'Smith', 'bob@example.com', '555-5678'),
(3, 'Carol', 'White', 'carol@example.com', '555-8765');

-- Insert into Sale
INSERT INTO Sale VALUES
(1, 1, 1, '2024-05-01', 1150.00),
(2, 2, 2, '2024-05-03', 2400.00),
(3, 3, 3, '2024-05-06', 1700.00);

-- Insert into Staff
INSERT INTO Staff VALUES
(1, 'Dan', 'Brown', 'Technician'),
(2, 'Eve', 'Green', 'Sales'),
(3, 'Frank', 'Black', 'Manager');

-- Insert into Repair
INSERT INTO Repair VALUES
(1, 5, 1, '2024-05-02', 'Replaced output jack', 50.00),
(2, 3, 1, '2024-05-05', 'Neck adjustment', 40.00);
