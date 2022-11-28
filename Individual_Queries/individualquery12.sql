-- Query 12: 

SELECT last_name,
         count(last_name)
FROM actor
GROUP BY  last_name
HAVING count(last_name) > 1;
