SELECT animal_type, 
    CASE WHEN name is null THEN 'No name' ELSE name END AS name, 
    sex_upon_intake
    FROM animal_ins
    ORDER BY animal_id;
    
    