SELECT category, SUM(book_sales.sales) AS total_sales
    FROM book
    JOIN book_sales ON book.book_id = book_sales.book_id
    WHERE TO_CHAR(sales_date, 'yyyy-MM') = '2022-01'
    GROUP BY category
    ORDER BY category;

