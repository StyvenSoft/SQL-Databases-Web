-- Una CASE declaración nos permite crear diferentes salidas
-- Es la forma en que SQL maneja la lógica si-entonces .


-- Cada WHEN prueba una condición y lo siguiente THEN nos da la cadena si la condición es verdadera
-- La CASE declaración debe terminar con END.

SELECT name,
 CASE
  WHEN imdb_rating > 8 THEN 'Fantastic'
  WHEN imdb_rating > 6 THEN 'Poorly Received'
  ELSE 'Avoid at All Costs'
 END
FROM movies;

-- Para acortarlo, podemos cambiar el nombre de la columna a 'Revisar' usando AS

SELECT name,
 CASE
  WHEN imdb_rating > 8 THEN 'Fantastic'
  WHEN imdb_rating > 6 THEN 'Poorly Received'
  ELSE 'Avoid at All Costs'
 END AS 'Review'
FROM movies;

-- Seleccione la namecolumna y use una CASEinstrucción para crear la segunda columna 

-- ‘Chill’ if genre = 'romance'
-- ‘Chill’ if genre = 'comedy'
-- ‘Intense’ in all other cases

SELECT name,
 CASE
  WHEN genre = 'romance' THEN 'Chill'
  WHEN genre = 'comedy'  THEN 'Chill'
  ELSE 'Intense'
 END AS 'Mood'
FROM movies;

-- Aquí hay otra consulta que nos dará el mismo resultado:

SELECT name,
 CASE
  WHEN genre = 'romance' OR genre = 'comedy' 
   THEN 'Chill'
  ELSE 'Intense'
 END AS 'Mood'
FROM movies;
