SELECT first_name,COUNT(first_name) FROM users GROUP BY first_name order by (COUNT(first_name)) desc