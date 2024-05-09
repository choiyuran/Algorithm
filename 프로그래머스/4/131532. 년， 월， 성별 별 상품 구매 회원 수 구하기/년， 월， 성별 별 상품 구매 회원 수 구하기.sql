SELECT 
    TO_CHAR(o.sales_date, 'yyyy') AS year, 
    TO_NUMBER(TO_CHAR(o.sales_date, 'MM')) AS month, 
    gender, COUNT(DISTINCT o.user_id) AS users
FROM online_sale o
JOIN user_info u 
ON u.user_id = o.user_id
WHERE u.gender IS NOT NULL
GROUP BY TO_CHAR(o.sales_date, 'yyyy'), TO_CHAR(o.sales_date, 'MM'), gender
ORDER BY TO_CHAR(o.sales_date, 'yyyy'), TO_CHAR(o.sales_date, 'MM'), gender;