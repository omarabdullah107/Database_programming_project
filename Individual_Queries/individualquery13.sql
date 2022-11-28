-- Query 13: 

 SELECT f.title,
         count(i.inventory_id) AS number_of_copies
FROM public.film f
JOIN public.inventory i
    ON f.film_id = i.film_id
WHERE f.title = 'HUNCHBACK IMPOSSIBLE'
GROUP BY  f.title;
