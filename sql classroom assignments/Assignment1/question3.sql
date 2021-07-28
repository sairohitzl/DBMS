select cu.first_name,cu.last_name from customer cu join rental r on cu.customer_id=r.customer_id join inventory i on 
i.inventory_id=r.inventory_id join film_category fc on fc.film_id=i.film_id join category c on c.category_id=fc.category_id 
join address a on cu.address_id=a.address_id join city ci on a.city_id=ci.city_id join country co
on ci.country_id=co.country_id where co.country="India" and c.name="Sports";
