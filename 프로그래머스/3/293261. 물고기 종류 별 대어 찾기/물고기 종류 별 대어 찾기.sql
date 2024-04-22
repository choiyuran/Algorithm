select info.id, name.fish_name, info.length
    from fish_info info
    join fish_name_info name on info.fish_type = name.fish_type
    join 
        (select
         fish_name,
         max(length) as max_length
         from fish_info info
         join fish_name_info name on info.fish_type = name.fish_type
         group by fish_name) as max_length
         on max_length.fish_name = name.fish_name 
         and max_length.max_length = info.length;