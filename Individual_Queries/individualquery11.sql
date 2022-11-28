-- Query 11: 

SELECT f.title, c.name, COUNT(r.rental_id)
FROM public.film_category fc
JOIN public.category c
ON c.category_id = fc.category_id
JOIN public.film f
ON f.film_id = fc.film_id
JOIN public.inventory i
ON i.film_id = f.film_id
JOIN public.rental r 
ON r.inventory_id = i.inventory_id
WHERE c.name IN ('Animation', 'Children', 'Classics', 'Comedy', 'Family', 'Music')
GROUP BY 1, 2
ORDER BY 2, 1
