SELECT COUNT(DISTINCT(u.user_id)) AS no_order_count
FROM users AS u
LEFT JOIN transactions AS t
ON u.user_id = t.user_id
WHERE t.transaction_id IS NULL;
