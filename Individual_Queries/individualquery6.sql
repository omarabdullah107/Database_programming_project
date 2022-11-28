-- Query 6:  

 select
    customer.first_name,
    customer.last_name,
    count(customer.first_name) rentals_count
from
    public.customer
left join public.rental on
    customer.customer_id = rental.customer_id
where customer.last_name like 'A%'	
group by
    customer.first_name,
    customer.last_name
order by rentals_count desc;
