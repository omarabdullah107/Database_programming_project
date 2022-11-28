-- Query 9: 

 select
    category.name,
    film.title,
    sum(payment.amount) as "gross revenue"
from
    public.film
left join public.film_category on
    film_category.film_id = film.film_id
left join public.category on
    film_category.category_id = category.category_id
left join public.inventory on
    inventory.film_id = film.film_id
left join public.rental on
    rental.inventory_id = inventory.inventory_id
left join public.payment
    on payment.rental_id = rental.rental_id
where
    payment.amount is not null and film.title like '%A'
group by
    category.name,
    film.title
order by
    sum(payment.amount) desc;

