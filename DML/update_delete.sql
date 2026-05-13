USE online_food_ordering;

-- UPDATE (required)
UPDATE users
SET name = 'Ali Raza'
WHERE user_id = 1;

-- DELETE (required)
DELETE FROM payment
WHERE payment_id = 2;