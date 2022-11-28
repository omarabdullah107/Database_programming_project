-- Query 5: 

select
    first_name,
    last_name
from
    public.customer
where
    active = 1 and last_name like 'A%'
order by first_name asc;
