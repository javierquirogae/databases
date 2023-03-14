### Conceptual Exercise

Answer the following questions below:

- What is PostgreSQL?
it is a object-relational database

- What is the difference between SQL and PostgreSQL?
very little. Postgress adheres closely to SQL standard. The main difference is that Postgress has some additional fetures.

- In `psql`, how do you connect to a database?
psql `name_of_database`


- What is the difference between `HAVING` and `WHERE`?
Having filters after agregation whereas where filters before agregation

- What is the difference between an `INNER` and `OUTER` join?
inner join yeilds the overlap of two tables whereas outer join joins the entirety of the two tables

- What is the difference between a `LEFT OUTER` and `RIGHT OUTER` join?
left join includes the entire left table AND the overlap of the right table. roght join does simmilarly but oposite. 

- What is an ORM? What do they do?
An object-relational mapper provides an object-oriented layer between relational databases and object-oriented programming languages without having to write SQL queries.

- What are some differences between making HTTP requests using AJAX 
  and from the server side using a library like `requests`?
AJAX is use on the client side and requests are used from the server side 

- What is CSRF? What is the purpose of the CSRF token?
A Cross Site Request Frequency (CSRF) token is a secure random token (e.g., synchronizer token or challenge token) that is used to prevent CSRF attacks.

- What is the purpose of `form.hidden_tag()`?
The form. hidden_tag() template argument generates a hidden field that includes a token that is used to protect the form against CSRF attacks
