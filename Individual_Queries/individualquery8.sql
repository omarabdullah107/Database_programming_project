-- Query 8:

select
    store.store_id,
    sum(payment.amount) as "total revenue"
from
    public.store
left join public.inventory on
    inventory.store_id = store.store_id
left join public.rental on
    rental.inventory_id = inventory.inventory_id
left join public.payment on
    payment.rental_id = rental.rental_id
where
    payment.amount is not null
group by
    store.store_id
order by
    sum(payment.amount) desc;
