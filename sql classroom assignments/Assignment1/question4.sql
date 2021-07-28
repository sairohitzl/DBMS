select distinct c.first_name,c.last_name,country from customer c 
join rental r on c.customer_id=r.customer_id 
join inventory i on i.inventory_id=r.inventory_id 
join film_actor fa on fa.film_id=i.film_id 
join actor on actor.actor_id=fa.actor_id 
join address a on c.address_id=a.address_id 
join city on city.city_id=a.city_id 
join country cty on cty.country_id = city.country_id 
where country='canada' and actor.first_name='NICK' 
and actor.last_name='WAHLBERG';
