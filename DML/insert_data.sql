USE online_food_ordering;

-- USERS
INSERT INTO users (user_id, name, email, password) VALUES
(1, 'Ali Khan', 'ali@gmail.com', '1234'),
(2, 'Ahmed Ali', 'ahmed@gmail.com', '5678'),
(3, 'Sara Khan', 'sara@gmail.com', '1122');

-- RESTAURANT
INSERT INTO restaurant (restaurant_id, restaurant_name, location, contact) VALUES
(1, 'Food Hub', 'Karachi', '03001234567'),
(2, 'Spice Corner', 'Lahore', '03111222333');

-- MENU
INSERT INTO menu (item_id, restaurant_id, item_name, price, category) VALUES
(1, 1, 'Burger', 500, 'Fast Food'),
(2, 1, 'Pizza', 1200, 'Fast Food'),
(3, 2, 'Biryani', 300, 'Desi Food');

-- ORDERS
INSERT INTO orders (order_id, user_id, order_date, total_amount) VALUES
(1, 1, '2026-05-10', 1700),
(2, 2, '2026-05-11', 800);

-- ORDER DETAILS
INSERT INTO order_details (order_detail_id, order_id, item_id, quantity) VALUES
(1, 1, 1, 2),
(2, 1, 2, 1),
(3, 2, 3, 2);

-- PAYMENT
INSERT INTO payment (payment_id, order_id, payment_method, payment_status, payment_date, amount_paid) VALUES
(1, 1, 'Cash', 'Completed', '2026-05-10', 1700),
(2, 2, 'JazzCash', 'Completed', '2026-05-11', 800);