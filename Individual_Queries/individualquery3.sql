-- Query 3: 
 select
    actor.first_name,
    actor.last_name,
    count(actor.first_name) featured_count
from
    public.actor
left join public.film_actor on
    actor.actor_id = film_actor.actor_id
where actor.last_name like '%a%'	
group by
    actor.first_name,
    actor.last_name
order by
    featured_count desc;
