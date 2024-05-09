SELECT (CASE
        WHEN (skill_code & (SELECT SUM(code) FROM skillcodes WHERE category LIKE 'FRONT%')) 
        AND skill_code & (SELECT code FROM skillcodes WHERE name = 'PYTHON') THEN 'A'
        WHEN skill_code & (SELECT code FROM skillcodes WHERE name = 'C#') THEN 'B'
        WHEN skill_code & (SELECT SUM(code) FROM skillcodes WHERE category LIKE 'FRONT%') THEN 'C'
        ELSE NULL 
        END) grade, id, email
FROM developers
GROUP BY grade, id, email
HAVING grade IS NOT NULL
ORDER BY grade, id