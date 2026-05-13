# DATABASE NORMALIZATION

## PROJECT NAME
ONLINE FOOD ORDERING SYSTEM

## GROUP MEMBER
IBRAHIM JANJUA

## SECTION
BSSE GROUP B

---

# USERS TABLE

## Schema
- user_id (PK)
- name
- email
- password

### 1NF (First Normal Form)
All attributes contain atomic values only.  
There are no repeating groups or multiple values in a single column.

✔ USERS table satisfies 1NF.

### 2NF (Second Normal Form)
The primary key is a single attribute (`user_id`).  
All non-key attributes (`name`, `email`, `password`) fully depend on the primary key.

✔ USERS table satisfies 2NF.

### 3NF (Third Normal Form)
No transitive dependency exists.  
All non-key attributes depend only on `user_id`.

✔ USERS table satisfies 3NF.

### Changes Made
No changes were required because the table was already normalized.

---

# RESTAURANT TABLE

## Schema
- restaurant_id (PK)
- restaurant_name
- location
- contact

### 1NF
All attributes are atomic and contain single values only.

✔ RESTAURANT table satisfies 1NF.

### 2NF
The primary key is `restaurant_id`, and all attributes fully depend on it.

✔ RESTAURANT table satisfies 2NF.

### 3NF
No transitive dependency exists between non-key attributes.

✔ RESTAURANT table satisfies 3NF.

### Changes Made
No changes were required.

---

# MENU TABLE

## Original Issue
The menu table was not linked to restaurants properly.

## Updated Schema
- item_id (PK)
- restaurant_id (FK)
- item_name
- price
- category

### 1NF
All fields contain atomic values.  
No repeating groups exist.

✔ MENU table satisfies 1NF.

### 2NF
The primary key is `item_id`, and all non-key attributes depend fully on it.

✔ MENU table satisfies 2NF.

### 3NF
Initially, the table lacked a relationship with the restaurant table.  
This caused poor relational structure and possible redundancy.

### Improvement Made
Added:
- `restaurant_id` as a Foreign Key

This properly links each menu item to a restaurant.

✔ MENU table satisfies 3NF after modification.

### Changes Made
Added `restaurant_id` foreign key to establish relationship with RESTAURANT table.

---

# ORDERS TABLE

## Schema
- order_id (PK)
- user_id (FK)
- order_date
- total_amount

### 1NF
All attributes are atomic.

✔ ORDERS table satisfies 1NF.

### 2NF
All non-key attributes depend fully on `order_id`.

✔ ORDERS table satisfies 2NF.

### 3NF
No transitive dependency exists.

✔ ORDERS table satisfies 3NF.

### Changes Made
No changes were required.

---

# ORDER_DETAILS TABLE

## Schema
- order_detail_id (PK)
- order_id (FK)
- item_id (FK)
- quantity

### 1NF
All values are atomic.

✔ ORDER_DETAILS table satisfies 1NF.

### 2NF
All attributes depend fully on the primary key.

✔ ORDER_DETAILS table satisfies 2NF.

### 3NF
No redundant or transitive dependency exists.

✔ ORDER_DETAILS table satisfies 3NF.

### Changes Made
No changes were required.

---

# PAYMENT TABLE

## Schema
- payment_id (PK)
- order_id (FK)
- payment_method
- payment_status
- payment_date
- amount_paid

### 1NF
All attributes contain atomic values only.

✔ PAYMENT table satisfies 1NF.

### 2NF
All non-key attributes depend fully on `payment_id`.

✔ PAYMENT table satisfies 2NF.

### 3NF
No transitive dependency exists.

✔ PAYMENT table satisfies 3NF.

### Changes Made
No changes were required.

---

# REMOVAL OF DUPLICATES AND REDUNDANCY

## USERS TABLE
No duplicate data found.  
Each user is uniquely identified using `user_id`.

## MENU TABLE
Issue found:
Menu items were not connected to restaurants.

Fix applied:
Added `restaurant_id` as a foreign key.

## ORDERS TABLE
No redundant attributes found.

## ORDER_DETAILS TABLE
Acts as a bridge table between ORDERS and MENU.  
No redundancy exists.

## PAYMENT TABLE
Each payment is linked to one order.  
No duplicate or repeated data found.

## RESTAURANT TABLE
No duplicate attributes found.

---

# FINAL RESULT

After applying normalization from 1NF to 3NF:
- Redundancy was minimized
- Relationships were improved
- Data integrity was maintained
- Foreign key relationships were properly established

The final database schema is fully normalized up to Third Normal Form (3NF).