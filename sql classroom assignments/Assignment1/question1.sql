select title from film f 
inner join film_category fc on f.film_id=fc.film_id 
inner join category c on fc.category_id=c.category_id
where (f.rating='PG-13' and c.name='Comedy');
