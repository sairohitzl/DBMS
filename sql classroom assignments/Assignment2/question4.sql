select c.name as top_3_rented_categories from category c 
join film_category fc on c.category_id=fc.category_id  
join inventory i on i.film_id=fc.film_id 
join customer cust on cust.store_id=i.store_id 
where cust.first_name='PATRICIA' and cust.last_name='JOHNSON' 
group by c.name order by count(c.name) desc limit 3;
