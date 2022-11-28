-- Query 4:
select
    first_name,
    last_name
from
    public.customer
where
    active = 1
order by first_name asc;
