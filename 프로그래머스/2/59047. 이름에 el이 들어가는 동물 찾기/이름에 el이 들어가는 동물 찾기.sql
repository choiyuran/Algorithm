SELECT animal_id, name
    FROM animal_ins
    WHERE name like '%el%' AND animal_type = 'DOG'
    ORDER by name;