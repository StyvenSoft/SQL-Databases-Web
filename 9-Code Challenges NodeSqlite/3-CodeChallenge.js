
/**
 * 
 * La consulta en el espacio de trabajo devolverá un error! Registre el error en 
 * la consola si existe; de ​​lo contrario, registre las filas recuperadas.
 *  */

const db = require('./db');

db.all('SELECT * from NonexistentTable', (err, rows) => {
	if (err) {
    console.log(err);
  } else {
    console.log(rows);
  }
});