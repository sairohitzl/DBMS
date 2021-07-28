select f.title from film f join inventory i on f.film_id=i.film_id join rental r on r.inventory_id=i.inventory_id
join film_category fc on f.film_id=fc.film_id join category c on c.category_id=fc.category_id where 
c.name='Horror' group by f.title order by count(f.title) desc limit 3;
