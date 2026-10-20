SELECT user_id, sum(total_amount) AS march_total
FROM transactions 
WHERE month(transaction_date) = 3
GROUP BY user_id
ORDER BY march_total DESC;
