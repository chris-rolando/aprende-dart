import 'dart:io';
import 'dart:math';

/**
* clase 07: Guia estructuras de control de flujo
* 🦖 Tomar de referencia JS
*/

main() {
// Ejemplo #1: if else

  print('\n-- Calcular edad --');
  // Recibe dato
  stdout.writeln('\n¿Cuál es tu edad?');

  int age = int.parse(stdin.readLineSync() ?? '0');
  // Uso
  if (age >= 21) {
    stdout.writeln('Ciudano');
  } else if (age >= 18) {
    stdout.writeln('Mayor de edad');
  } else {
    stdout.writeln('Menor de edad');
  }

// Ejemplo #2: for
  print('\n-- Lista de frutas --\n');
  List<String> fruits = ['manzana', 'banana', 'pera', 'uva'];

  // Iterando con for
  for (String fruit in fruits) {
    print('Me gusta comer $fruit');
  }

// Ejemplo #3: for
  print('\n-- Tablas de multiplicar --');
  stdout.writeln('\n¿Cuál es la base de la tabla?');
  int base = int.parse(stdin.readLineSync() ?? '1');

  for (int i = 1; i <= 10; i++) {
    stdout.writeln('$base * $i = ${i * base}');
  }

// Ejemplo #5: forin

// 🚀 Uso: iterar sobre colecciones
  print('\n-- Calculando la longitud total de los nombres de las frutas --');

  int totalLength = 0;
  for (String fruit in fruits) {
    totalLength += fruit.length;
  }
  print('La longitud total de los nombres de las frutas es: $totalLength');

  // Ejemplo con una función personalizada
  void showFruitInfo(String fruit) {
    print('La fruta $fruit tiene ${fruit.length} letras.');
  }

  for (String fruit in fruits) {
    showFruitInfo(fruit);
  }

// Ejemplo 6: Do While

  int sum = 0;
  int number;

  print("Ingresa números para sumarlos. Ingresa 0 para terminar la suma.");

  do {
    number = int.parse(stdin.readLineSync()!);
    sum += number;
  } while (number != 0);

  print("La suma total es: $sum");

// Ejemplo 7: for con etiquetas

  outerLoop:
  int player1Position = 0;
  int player2Position = 0;
  int meta = 10;

  // Simulación de tirar un dado
  int tirarDado() => Random().nextInt(6) + 1;

  outerLoop:
  for (int ronda = 1; ronda <= 3; ronda++) {
    print("Ronda $ronda");

    // Jugador 1
    player1Position += tirarDado();
    print("Jugador 1 saco avanza a la casilla ${player1Position}");
    if (player1Position >= meta) {
      print("¡El jugador 1 ha ganado!");
      break outerLoop; // Termina el juego
    }

    // Jugador 2
    player2Position += tirarDado();
    print("Jugador 2 avanza a la casilla ${player2Position}");
    if (player2Position >= meta) {
      print("¡El jugador 2 ha ganado!");
      break outerLoop; // Termina el juego
    }
  }
  
}
