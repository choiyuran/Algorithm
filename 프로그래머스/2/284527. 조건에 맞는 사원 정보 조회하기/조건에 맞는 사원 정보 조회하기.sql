SELECT *
    FROM(
        SELECT SUM(grade.score) AS score, 
        empl.emp_no, empl.emp_name, empl.position, empl.email
            FROM hr_employees empl
            JOIN hr_grade grade
            ON empl.emp_no = grade.emp_no
            GROUP BY empl.emp_no) result
    ORDER BY score DESC
    LIMIT 1;