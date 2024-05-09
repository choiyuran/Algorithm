SELECT YEAR(sales_date) AS year, 
		MONTH(sales_date) AS month, 
        gender, 
        COUNT(DISTINCT o.user_id) AS users
FROM online_sale o
JOIN user_info u ON u.user_id = o.user_id
WHERE gender is not NULL
GROUP BY year, month, gender
ORDER BY year, month, gender;