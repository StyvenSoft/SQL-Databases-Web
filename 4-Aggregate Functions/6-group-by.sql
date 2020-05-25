--  Podríamos calcular cada número mediante una serie de consultas con diferentes WHERE afirmaciones

SELECT AVG(imdb_rating)
FROM movies
WHERE year = 1999;

SELECT AVG(imdb_rating)
FROM movies
WHERE year = 2000;

SELECT AVG(imdb_rating)
FROM movies
WHERE year = 2001;

-- Pero podemos GROUP BY hacer esto en un solo paso:

SELECT year,
   AVG(imdb_rating)
FROM movies
GROUP BY year
ORDER BY year

--  nuestra función agregada es COUNT()price

SELECT price, COUNT(*) 
FROM fake_apps
GROUP BY price;

-- agregue una WHEREcláusula para contar el número total de aplicaciones que se han descargado más de 20,000 veces, a cada precio.

SELECT price, COUNT(*) 
FROM fake_apps
WHERE downloads > 20000
GROUP BY price;

-- calcule el número total de descargas para cada categoría.

SELECT category, SUM(downloads)
FROM fake_apps
GROUP BY category;

-- A veces, queremos GROUP BYun cálculo realizado en una columna.

-- cuántas películas tienen calificaciones de IMDb que se redondean a 1, 2, 3, 4, 5. 

SELECT ROUND(imdb_rating),
   COUNT(name)
FROM movies
GROUP BY ROUND(imdb_rating)
ORDER BY ROUND(imdb_rating);

-- La siguiente consulta es equivalente a la anterior:

SELECT ROUND(imdb_rating),
   COUNT(name)
FROM movies
GROUP BY 1
ORDER BY 1;

-- Escriba la consulta exacta, pero use números de referencia de columna en lugar de nombres de columna después GROUP BY.

