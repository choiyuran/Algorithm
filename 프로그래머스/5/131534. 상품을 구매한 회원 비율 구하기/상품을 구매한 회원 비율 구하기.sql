SELECT 
    YEAR(online.sales_date) AS year, 
    MONTH(online.sales_date) AS month, 
    COUNT(DISTINCT online.user_id) AS purchased_users,
    ROUND(COUNT(DISTINCT online.user_id) / total_users.total_count,1) AS ratio
FROM user_info info
JOIN online_sale online ON info.user_id = online.user_id
JOIN 
    (SELECT COUNT(user_id) AS total_count 
     FROM user_info 
     WHERE YEAR(joined) = 2021) AS total_users
WHERE YEAR(info.joined) = 2021
GROUP BY year, month
ORDER BY year, month;
    




