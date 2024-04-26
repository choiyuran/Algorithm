SELECT TO_NUMBER(TO_CHAR(datetime, 'hh24')) AS hour, COUNT(animal_id) AS count
    FROM animal_outs
    WHERE TO_NUMBER(TO_CHAR(datetime, 'hh24')) between '09' and '19'
    GROUP BY TO_NUMBER(TO_CHAR(datetime, 'hh24'))
    ORDER BY TO_NUMBER(TO_CHAR(datetime, 'hh24'));