SELECT ins.animal_id, outs.name
    FROM animal_ins ins
    JOIN animal_outs outs 
    ON ins.animal_id = outs.animal_id
    ORDER BY outs.datetime - ins.datetime DESC
    FETCH FIRST 2 ROWS ONLY;