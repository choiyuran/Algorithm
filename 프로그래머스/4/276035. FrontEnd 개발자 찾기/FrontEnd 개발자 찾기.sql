SELECT id, email, first_name, last_name
    FROM developers 
    WHERE skill_code & (
    SELECT sum(code)
    FROM skillcodes
    WHERE category = 'Front End'
    group by category)
ORDER BY id;