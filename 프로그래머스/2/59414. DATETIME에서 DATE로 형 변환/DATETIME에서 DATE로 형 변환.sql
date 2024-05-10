SELECT animal_id, name, TO_CHAR(datetime, 'yyyy-MM-dd') AS 날짜
    FROM animal_ins
    ORDER BY animal_id;