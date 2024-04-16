select child.ID, child.GENOTYPE, parent.GENOTYPE AS PARENT_GENOTYPE
from ecoli_data child inner join ecoli_data parent 
on child.parent_id = parent.id
where child.genotype & parent.genotype = parent.genotype
order by child.id;