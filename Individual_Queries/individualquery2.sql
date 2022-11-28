-- Query 2: 

 select
    actor.first_name,
    actor.last_name,
    count(actor.first_name) featured_count
from
    public.actor
left join public.film_actor on
    actor.actor_id = film_actor.actor_id
where actor.last_name like 'D%'	
group by
    actor.first_name,
    actor.last_name
order by
    featured_count desc;
