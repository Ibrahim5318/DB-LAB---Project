USE online_food_ordering;

-- COUNT CHECK (ALL TABLES)
SELECT COUNT(*) FROM users;
SELECT COUNT(*) FROM restaurant;
SELECT COUNT(*) FROM menu;
SELECT COUNT(*) FROM orders;
SELECT COUNT(*) FROM order_details;
SELECT COUNT(*) FROM payment;

-- NULL CHECK
SELECT * FROM users
WHERE user_id IS NULL
   OR name IS NULL
   OR email IS NULL;

-- JOIN CHECK (USER ORDERS)
SELECT u.name, o.order_id, o.total_amount
FROM users u
JOIN orders o ON u.user_id = o.user_id;

-- JOIN CHECK (MENU + ORDER DETAILS)
SELECT m.item_name, od.quantity
FROM menu m
JOIN order_details od ON m.item_id = od.item_id;