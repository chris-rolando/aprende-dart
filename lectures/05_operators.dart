/**
* clase 05: Guia operadores
* 🦖 Tomar de referencia JS
*/

void main() {

  // ejemplo operadores aritméticos

  print('-- Calcular área y perímetro de un triangulo --');
  // dimensiones del rectángulo
  double width = 5;
  double height = 3;

  // área
  double area = width * height;

  // perímetro
  double perimeter = 2 * (width + height);

  print('El área del rectángulo es: $area');
  print('El perímetro del rectángulo es: $perimeter');

  // ejemplo #2

  print('-- Calcular descuentos en una compra --');

  double originalPrice = 1000;
  double discountPercentage = 15; // porcentaje

  // descuento en valor absoluto
  double discountAmount = originalPrice * (discountPercentage / 100);

  // precio final
  double finalPrice = originalPrice - discountAmount;

  print('El precio final con descuento es: \$$finalPrice');
}
