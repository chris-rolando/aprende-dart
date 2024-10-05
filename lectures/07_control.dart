import 'dart:io';

/**
* clase 07: control de flujo
* 🦖 Tomar de referencia JS
*/

main() {
// Ejemplo #1: if else

  print('\n-- Calcular edad --');
  // Recibe dato
  stdout.writeln('\n¿Cuál es tu edad?');

  int age = int.parse(stdin.readLineSync() ?? '0');
  // Uso del if else
  if (age >= 21) {
    stdout.writeln('Ciudano');
  } else if (age >= 18) {
    stdout.writeln('Mayor de edad');
  } else {
    stdout.writeln('Menor de edad');
  }

// Ejemplo #2: for
  print('\n-- Lista de frutas --\n');
  List<String> frutas = ['manzana', 'banana', 'pera', 'uva'];

  // Iterando con for
  for (String fruta in frutas) {
    print('Me gusta comer $fruta');
  }

// Ejemplo #3: for
  print('\n-- Tablas de multiplicar --');
  stdout.writeln('\n¿Cuál es la base de la tabla?');
  int base = int.parse(stdin.readLineSync() ?? '1');

  for (int i = 1; i <= 10; i++) {
    stdout.writeln('$base * $i = ${i * base}');
  }
}
