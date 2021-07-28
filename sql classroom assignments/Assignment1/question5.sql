select count(f.title) from film f  join film_actor fa on f.film_id=fa.film_id join actor a on a.actor_id=fa.actor_id
where a.first_name="SEAN" and a.last_name="WILLIAMS";
