CREATE DATABASE online_food_ordering;

USE online_food_ordering;

-- USERS TABLE
CREATE TABLE users (
    user_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    password VARCHAR(50) NOT NULL
);

-- RESTAURANT TABLE
CREATE TABLE restaurant (
    restaurant_id INT PRIMARY KEY,
    restaurant_name VARCHAR(100) NOT NULL,
    location VARCHAR(100),
    contact VARCHAR(20)
);

-- MENU TABLE
CREATE TABLE menu (
    item_id INT PRIMARY KEY,
    restaurant_id INT,
    item_name VARCHAR(100) NOT NULL,
    price DECIMAL(10,2),
    category VARCHAR(50),
    FOREIGN KEY (restaurant_id) REFERENCES restaurant(restaurant_id)
);

-- ORDERS TABLE
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    user_id INT,
    order_date DATE,
    total_amount DECIMAL(10,2),
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);

-- ORDER DETAILS TABLE
CREATE TABLE order_details (
    order_detail_id INT PRIMARY KEY,
    order_id INT,
    item_id INT,
    quantity INT,
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (item_id) REFERENCES menu(item_id)
);

-- PAYMENT TABLE
CREATE TABLE payment (
    payment_id INT PRIMARY KEY,
    order_id INT,
    payment_method VARCHAR(50),
    payment_status VARCHAR(50),
    payment_date DATE,
    amount_paid DECIMAL(10,2),
    FOREIGN KEY (order_id) REFERENCES orders(order_id)
);