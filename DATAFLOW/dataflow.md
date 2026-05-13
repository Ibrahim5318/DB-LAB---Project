# DATAFLOW DESCRIPTION

## PROJECT NAME
ONLINE FOOD ORDERING SYSTEM

## GROUP MEMBER
IBRAHIM JANJUA

## SECTION
BSSE GROUP B

---

# DATAFLOW OF THE SYSTEM

The Online Food Ordering System manages data flow between users, restaurants, menu items, orders, and payments.

## Step 1 — User Registration

Users first register in the system by providing:
- Name
- Email
- Password

This information is stored in the `USERS` table.

The `user_id` is generated uniquely for every user and is later used in the Orders table.

---

## Step 2 — Restaurant Management

Restaurant information such as:
- Restaurant name
- Location
- Contact number

is stored in the `RESTAURANT` table.

Each restaurant receives a unique `restaurant_id`.

---

## Step 3 — Menu Management

Restaurants add food items to the menu.

Menu data includes:
- Item name
- Price
- Category

This information is stored in the `MENU` table.

Each menu item is connected to a restaurant using:
- `restaurant_id` (Foreign Key)

This creates a relationship between RESTAURANT and MENU tables.

---

## Step 4 — Order Placement

When a user places an order:
- A new record is created in the `ORDERS` table.

The order stores:
- Order ID
- User ID
- Order date
- Total amount

The `user_id` connects each order to the user who placed it.

---

## Step 5 — Order Details Processing

Each order may contain multiple food items.

The ordered items are stored in the `ORDER_DETAILS` table.

This table stores:
- Order detail ID
- Order ID
- Item ID
- Quantity

This table acts as a bridge between:
- ORDERS table
- MENU table

It helps manage many-to-many relationships between orders and menu items.

---

## Step 6 — Payment Processing

After placing the order, payment information is stored in the `PAYMENT` table.

The payment table stores:
- Payment ID
- Order ID
- Payment method
- Payment status
- Payment date
- Amount paid

Each payment is linked to a specific order using:
- `order_id` (Foreign Key)

---

# OUTPUT OF THE SYSTEM

The system produces outputs such as:
- User order history
- Restaurant menu listings
- Payment records
- Order summaries
- Sales reports
- Customer order details

The database can also generate JOIN-based query results combining:
- Users
- Orders
- Menu items
- Payments

for reporting and management purposes.

---

# SUMMARY

The data flows through the system in the following sequence:

USERS → ORDERS → ORDER_DETAILS → PAYMENT

and

RESTAURANT → MENU → ORDER_DETAILS

Foreign key relationships maintain integrity and ensure proper connection between all tables.