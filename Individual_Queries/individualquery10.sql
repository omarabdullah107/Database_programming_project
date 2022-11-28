-- Query 10: 

select
    film.title,
    film.description
from
    public.film
where
    to_tsvector(film.description) @@ to_tsquery('documentary & robot');
