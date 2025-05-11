
-- Create Guitar table
CREATE TABLE Guitar (
    guitar_id INTEGER PRIMARY KEY,
    brand TEXT NOT NULL,
    model TEXT NOT NULL,
    type TEXT CHECK(type IN ('Electric', 'Acoustic', 'Bass')) NOT NULL,
    price REAL NOT NULL,
    in_stock INTEGER NOT NULL,
    condition TEXT CHECK(condition IN ('New', 'Used', 'Damaged')) NOT NULL
);

-- Create Customer table
CREATE TABLE Customer (
    customer_id INTEGER PRIMARY KEY,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    email TEXT,
    phone TEXT
);

-- Create Sale table
CREATE TABLE Sale (
    sale_id INTEGER PRIMARY KEY,
    guitar_id INTEGER,
    customer_id INTEGER,
    sale_date TEXT,
    sale_price REAL,
    FOREIGN KEY (guitar_id) REFERENCES Guitar(guitar_id),
    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id)
);

-- Create Staff table
CREATE TABLE Staff (
    staff_id INTEGER PRIMARY KEY,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    role TEXT CHECK(role IN ('Sales', 'Manager', 'Technician')) NOT NULL
);

-- Create Repair table
CREATE TABLE Repair (
    repair_id INTEGER PRIMARY KEY,
    guitar_id INTEGER,
    staff_id INTEGER,
    repair_date TEXT,
    issue TEXT,
    cost REAL,
    FOREIGN KEY (guitar_id) REFERENCES Guitar(guitar_id),
    FOREIGN KEY (staff_id) REFERENCES Staff(staff_id)
);
