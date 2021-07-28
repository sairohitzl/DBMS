select count(f.rating) from film f join inventory i on f.film_id=i.film_id 
join store s on i.store_id=s.store_id
join customer c on c.store_id=s.store_id 
where c.first_name='SUSAN' and c.last_name='WILSON'
group by rating having rating='R';
