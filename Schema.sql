DROP DATABASE IF EXISTS ProductDb;
CREATE DATABASE ProductDb;
USE ProductDb;
DROP TABLE IF EXISTS Product_Category;
DROP TABLE IF EXISTS Product_Inventory;
DROP TABLE IF EXISTS Discount;
DROP TABLE IF EXISTS Product;

-- Create Product Category table
CREATE TABLE Product_Category (
    id INT PRIMARY KEY,
    name VARCHAR(255),
    description TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    modified_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    deleted_at TIMESTAMP
);

-- Create Product Inventory table
CREATE TABLE Product_Inventory (
    id INT PRIMARY KEY,
    quantity INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    modified_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    deleted_at TIMESTAMP
);

-- Create Discount table
CREATE TABLE Discount (
    id INT PRIMARY KEY,
    name VARCHAR(255),
    description TEXT,
    discount_percent DECIMAL(5, 2),
    active BOOLEAN,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    modified_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    deleted_at TIMESTAMP
);

-- Create Product table
CREATE TABLE Product (
    id INT PRIMARY KEY,
    name VARCHAR(255),
    description TEXT,
    SKU VARCHAR(100),
    category_id INT,
    inventory_id INT,
    price DECIMAL(10, 2),
    discount_id INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    modified_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    deleted_at TIMESTAMP,
    FOREIGN KEY (category_id) REFERENCES Product_Category(id)
);
