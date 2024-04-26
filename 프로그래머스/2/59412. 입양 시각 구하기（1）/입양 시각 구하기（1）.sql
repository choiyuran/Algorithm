SELECT TO_NUMBER(TO_CHAR(datetime, 'HH24')) AS hour, COUNT(animal_id) AS count
    FROM animal_outs
    WHERE TO_NUMBER(TO_CHAR(datetime, 'HH24')) between '09' and '19'
    GROUP BY TO_NUMBER(TO_CHAR(datetime, 'HH24'))
    ORDER BY TO_NUMBER(TO_CHAR(datetime, 'HH24'));