SELECT animal_id, name
    FROM animal_ins
    WHERE (name like '%el%' OR name like '%El%')
    AND animal_type = 'Dog'
    ORDER BY name;