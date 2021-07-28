select sum(p.amount) from payment p join rental r on p.rental_id=r.rental_id
join inventory i on r.inventory_id=i.inventory_id join film_category fc on i.film_id=fc.film_id 
join category c on fc.category_id=c.category_id where c.name='Animation';
