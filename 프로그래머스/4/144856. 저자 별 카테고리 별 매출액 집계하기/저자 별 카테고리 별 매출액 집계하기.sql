SELECT 
    a.author_id, a.author_name, b.category, SUM(s.sales * b.price) AS total_sales
    FROM book b
    JOIN author a ON b.author_id = a.author_id
    JOIN book_sales s ON b.book_id = s.book_id
    WHERE TO_CHAR(s.sales_date, 'yyyy-MM') = '2022-01'
GROUP BY a.author_id, b.category, a.author_name
ORDER BY a.author_id ASC, b.category DESC;