-- Query 1:

select
    category.name,
    count(category.name) category_count
from
    public.category
left join public.film_category on
    category.category_id = film_category.category_id
left join public.film on
    film_category.film_id = film.film_id
where film.title like 'A%'	
group by
    category.name
order by
    category_count desc;
