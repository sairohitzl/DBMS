select count(c.name) as scifi_movies_rented from category c join film_category fc on c.category_id=fc.category_id 
join inventory i on fc.film_id=i.film_id join staff st on i.store_id=st.store_id where st.first_name='JON'
and st.last_name='STEPHENS' and c.name='sci-fi';
