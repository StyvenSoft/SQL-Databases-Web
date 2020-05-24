-- La UPDATE declaración edita una fila en una tabla.

-- Puede usar la UPDATE declaración cuando desee cambiar los registros existentes

UPDATE celebs 
SET twitter_handle = '@taylorswift13' 
WHERE id = 4; 

-- Actualice la tabla para incluir el identificador de Twitter de Taylor Swift

 UPDATE celebs 
SET twitter_handle = '@taylorswift13' 
WHERE id = 4; 

SELECT * FROM celebs;