-- La ALTER TABLE declaración agrega una nueva columna a una tabla.

-- La siguiente declaración agrega una nueva columna twitter_handle a la celebs tabla.

ALTER TABLE celebs 
ADD COLUMN twitter_handle TEXT;

-- Agregue una nueva columna a la tabla. y se selecciona

ALTER TABLE celebs 
ADD COLUMN twitter_handle TEXT; 

SELECT * FROM celebs; 