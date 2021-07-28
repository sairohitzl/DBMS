select count(f.title) as no_of_films_having_deleted_scenes from film f join film_category fc on f.film_id=fc.film_id
join category c on fc.category_id=c.category_id 
where c.name='Documentary' and f.special_features like '%Deleted Scenes%';
