-- 1. Get all customers and their addresses.
    SELECT "first_name", "last_name", "street", "city", "state", "zip" 
    FROM costumers INNER JOIN addresses ON addresses.costumer_id = costumers.id


-- 2. Get all orders and their line items (orders, quantity and product).
    SELECT products.description, line_items.quantity, orders.order_date
    FROM products
    INNER JOIN line_items ON line_items.product_id = products.id
    INNER JOIN orders ON orders.id = line_items.order_id;

-- 3. Which warehouses have cheetos?
    SELECT warehouse FROM warehouse 
    INNER JOIN warehouse_product ON warehouse.id = warehouse_product.warehouse_id
    INNER JOIN products ON  warehouse_product.product_id = products.id 
    WHERE description LIKE 'cheetos'

-- 4. Which warehouses have diet pepsi?
    SELECT warehouse FROM warehouse 
    INNER JOIN warehouse_product ON warehouse.id = warehouse_product.warehouse_id
    INNER JOIN products ON  warehouse_product.product_id = products.id 
    WHERE description LIKE 'diet pepsi'

-- 5. Get the number of orders for each customer. NOTE: It is OK if those without orders are not included in results.


-- 6. How many customers do we have?
    SELECT COUNT(*) FROM customers

-- 7. How many products do we carry?
    SELECT COUNT(*) FROM products

-- 8. What is the total available on-hand quantity of diet pepsi?
    