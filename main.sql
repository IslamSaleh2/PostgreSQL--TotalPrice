SELECT users.full_name , orders.id , sum(price * quantity) as total_price
FROM users inner join orders on users.id=user_id
inner join order_items on orders.id=order_id
inner join products on order_items.product_id=products.id
GROUP BY full_name , orders.id