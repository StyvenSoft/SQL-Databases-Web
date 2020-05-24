-- Las restricciones que agregan información sobre cómo se puede usar una columna se invocan 
-- después de especificar el tipo de datos para una columna

-- Se pueden usar para indicar a la base de datos que rechace los datos insertados 
-- que no se adhieren a una determinada restricción.


-- las PRIMARY KEY columnas se pueden usar para identificar de forma exclusiva la fila. 

-- las UNIQUE columnas tienen un valor diferente para cada fila.

-- las DEFAULT columnas toman un argumento adicional que será el valor supuesto para una fila insertada si la nueva fila no especifica un valor para esa columna.


CREATE TABLE celebs (
   id INTEGER PRIMARY KEY, 
   name TEXT UNIQUE,
   date_of_birth TEXT NOT NULL,
   date_of_death TEXT DEFAULT 'Not Applicable'
);


-- Cree una nueva tabla con restricciones en los valores. En el editor de código, escriba:

