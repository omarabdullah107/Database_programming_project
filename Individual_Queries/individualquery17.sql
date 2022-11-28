-- Query 17: 

SELECT title
FROM public.film
WHERE language_id = 1
        AND title LIKE 'K%'
        OR title LIKE 'Q%';
