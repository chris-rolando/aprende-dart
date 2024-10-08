import 'dart:ffi';
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
  

// Ejemplo 7: for & labels
// 🚀 Uso: control sobre la salida de bucles anidados

  print('Juego de dados, ¡el primero en sumar 10 gana!');

  int player1Total = 0;
  int player2Total = 0;
  bool winner= false; 
  final int meta = 10;
  

  // Simulación de tirar un dado
  
  int play() => Random().nextInt(6) + 1;

  outerLoop:
  for (int turn = 1; turn <= 3; turn++) {
    print("\nRonda $turn");

    // Jugador 1
    player1Total += play();
    print("Jugador 1 acumula ${player1Total}");
    if (player1Total >= meta) {
      print("¡El jugador 1 ha ganado!");
      winner = true;
      break outerLoop; // Termina el juego
    }

    // Jugador 2
    player2Total += play();
    print("Jugador 2 acumula ${player2Total}");
    if (player2Total >= meta) {
      print("¡El jugador 2 ha ganado!");
      winner = true;
      break outerLoop; // Termina el juego
    }
  }
  // Verificación después de las 3 rondas, en caso de que nadie ganara
  if (!winner) {
    print("¡Game over! ambos perdieron");
  }

  /*
  * 🦖 Al ejecuarse break outerLoop rompe el for en la ronda actual
  */
  
}
