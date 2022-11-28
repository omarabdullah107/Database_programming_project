-- Query 16: 
SELECT c.email FROM public.customer c
JOIN public.address a ON c.address_id = a.address_id
WHERE a.district = 'California';
