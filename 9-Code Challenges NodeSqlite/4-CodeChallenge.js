
/**
 * 
 * Use db.each()para encontrar totalPricesi compró todas las camisas de la Clothingbase de datos. 
 * Seleccione el pricede cada fila donde itemestá 'shirt'y agregue los precios a totalPrice. 
 * La pricepropiedad de cada fila ya es un número, por lo que no necesita usarla Number()para convertirla.
 */


const db = require('./db');

let totalPrice = 0;
db.each("SELECT price FROM Clothing WHERE item='shirt'", (err, row) => {
  totalPrice += Number(row.price);
}, (err, numRows) => {
  console.log(totalPrice);
});