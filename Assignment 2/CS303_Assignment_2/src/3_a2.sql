-- approach 2
SELECT username, training_date, COUNT(user_training_id)
FROM users 
INNER JOIN training_details ON(users.user_id = training_details.user_id)
GROUP BY username, training_date
HAVING COUNT(*) > 1
ORDER BY username, training_date DESC;