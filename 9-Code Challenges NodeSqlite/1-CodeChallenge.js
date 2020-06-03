
/**
 * 
 * Utilizando db.each(), seleccione todas las filas de una tabla de Flower. En la devolución de llamada, 
 * verifique si el petal_color 'blue' y console.log la fila si lo es.
 * 
 */

const db = require('./db');

db.each("SELECT * FROM Flower", (err, row) => {
  if (row.petal_color === "blue") {
    console.log(row);
  }
});