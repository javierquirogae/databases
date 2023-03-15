Make sure you download the starter code and run the following:

```sh
  psql < movies.sql
  psql movies_db
```

In markdown, you can place a code block inside of three backticks (```) followed by the syntax highlighting you want, for example

\```sql

SELECT \* FROM users;

\```

Using the `movies_db` database, write the correct SQL queries for each of these tasks:

1.  The title of every movie.
`select title from movies;`

2.  All information on the G-rated movies.
`select * from movies where rating = 'G';`

3.  The title and release year of every movie, ordered with the
    oldest movie first.
`select title, release_year from movies order by release_year desc;`
    
4.  All information on the 5 longest movies.
`select * from movies order by runtime desc limit 5;`

5.  A query that returns the columns of `rating` and `total`, tabulating the
    total number of G, PG, PG-13, and R-rated movies.
`select rating, count(*) as total from movies group by rating;`

6.  A table with columns of `release_year` and `average_runtime`,
    tabulating the average runtime by year for every movie in the database. The data should be in reverse chronological order (i.e. the most recent year should be first).
`select release_year, avg(runtime) as average from movies group by release_year;`

7.  The movie title and studio name for every movie in the
    database.
`select m.title, s.name from movies m join studios s on m.studio_id = s.id;`

8.  The star first name, star last name, and movie title for every
    matching movie and star pair in the database.
`select s.first_name, s.last_name, m.title from movies m join roles r on m.id = r.movie_id join stars s on r.star_id = s.id;`

9.  The first and last names of every star who has been in a G-rated movie. The first and last name should appear only once for each star, even if they are in several G-rated movies. *IMPORTANT NOTE*: it's possible that there can be two *different* actors with the same name, so make sure your solution accounts for that.
`select distinct(concat(s.first_name, ' ', s.last_name)) as full_name from movies m join roles r on m.id = r.movie_id join stars s on r.star_id = s.id where m.rating = 'G';`

10. The first and last names of every star along with the number
    of movies they have been in, in descending order by the number of movies. (Similar to #9, make sure
    that two different actors with the same name are considered separately).
`select concat(s.first_name, ' ', s.last_name) as full_name, count(*) from movies m join roles r on m.id = r.movie_id join stars s on r.star_id = s.id group by full_name order by count desc;`

### The rest of these are bonuses

11. The title of every movie along with the number of stars in
    that movie, in descending order by the number of stars.

12. The first name, last name, and average runtime of the five
    stars whose movies have the longest average.

13. The first name, last name, and average runtime of the five
    stars whose movies have the longest average, among stars who have more than one movie in the database.

14. The titles of all movies that don't feature any stars in our
    database.

15. The first and last names of all stars that don't appear in any movies in our database.

16. The first names, last names, and titles corresponding to every
    role in the database, along with every movie title that doesn't have a star, and the first and last names of every star not in a movie.
