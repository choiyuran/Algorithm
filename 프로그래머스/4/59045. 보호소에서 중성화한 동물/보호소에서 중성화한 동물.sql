SELECT animal_id, animal_type, name
    FROM animal_outs 
    WHERE (sex_upon_outcome like 'Spayed%' OR sex_upon_outcome like 'Neutered%') 
    AND animal_id IN (SELECT animal_id
    FROM animal_ins
    WHERE sex_upon_intake not like 'Spayed%' AND sex_upon_intake not like 'Neutered%') 
    ORDER BY animal_id;