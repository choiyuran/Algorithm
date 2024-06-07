SELECT TO_CHAR(sales_date, 'YYYY') AS year,
    TO_NUMBER(TO_CHAR(sales_date, 'MM')) AS month,
    COUNT(DISTINCT(user_id)) AS puchased_users,
    ROUND(COUNT(DISTINCT(user_id)) / (SELECT COUNT(user_id)
                                    FROM user_info 
                                    WHERE TO_CHAR(joined, 'YYYY') = '2021'), 1) AS puchased_ratio
FROM online_sale
WHERE user_id IN (SELECT user_id
                  FROM user_info 
                  WHERE TO_CHAR(joined, 'YYYY') = '2021')
GROUP BY TO_CHAR(sales_date, 'YYYY') , TO_CHAR(sales_date, 'MM')
ORDER BY year, month;