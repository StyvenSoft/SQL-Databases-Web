-- La DELETE FROM instrucción elimina una o más filas de una tabla.

-- Puede usar la declaración cuando desee eliminar registros existentes.

DELETE FROM celebs 
WHERE twitter_handle IS NULL;

-- Elimine todas las filas que tienen un NULLvalor en la columna del identificador de Twitter.

DELETE FROM celebs 
WHERE twitter_handle IS NULL;

SELECT * FROM celebs; 