-- restringir los resultados de nuestra consulta utilizando la WHERE para obtener solo la información que queremos

SELECT *
FROM movies
WHERE imdb_rating > 8;

/*
Comparison operators used with the WHERE clause are:

= equal to
!= not equal to
> greater than
< less than
>= greater than or equal to
<= less than or equal to

*/

SELECT * 
FROM movies
WHERE year > 2014;