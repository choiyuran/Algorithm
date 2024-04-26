SELECT category, SUM(book_sales.sales) AS total_sales
    FROM book
    JOIN book_sales ON book.book_id = book_sales.book_id
    WHERE DATE_FORMAT(sales_date, '%Y-%m') = '2022-01'
    GROUP BY category
    ORDER BY category;

