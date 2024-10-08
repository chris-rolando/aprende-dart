import 'dart:io';
import 'dart:math';

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

// Ejemplo #5: forin

// 🥷🏻 Para iterar sobre colecciones
  print('\n-- Calculando la longitud total de los nombres de las frutas --');

  int longitudTotal = 0;
  for (String fruta in frutas) {
    longitudTotal += fruta.length;
  }
  print('La longitud total de los nombres de las frutas es: $longitudTotal');

  // Ejemplo con una función personalizada
  void mostrarInformacionFruta(String fruta) {
    print('La fruta $fruta tiene ${fruta.length} letras.');
  }

  for (String fruta in frutas) {
    mostrarInformacionFruta(fruta);
  }

// Ejemplo 6: Do While

  int suma = 0;
  int numero;

  print("Ingresa números para sumarlos. Ingresa 0 para terminar.");

  do {
    numero = int.parse(stdin.readLineSync()!);
    suma += numero;
  } while (numero != 0);

  print("La suma total es: $suma");

// Ejemplo 7: etiquetas

  outerLoop:
  int jugador1Posicion = 0;
  int jugador2Posicion = 0;
  int casillaFinal = 10;

  // Simulación de tirar un dado
  int tirarDado() => Random().nextInt(6) + 1;

  outerLoop:
  for (int ronda = 1; ronda <= 3; ronda++) {
    print("Ronda $ronda");

    // Jugador 1
    jugador1Posicion += tirarDado();
    print("Jugador 1 saco avanza a la casilla ${jugador1Posicion}");
    if (jugador1Posicion >= casillaFinal) {
      print("¡El jugador 1 ha ganado!");
      break outerLoop; // Termina el juego
    }

    // Jugador 2
    jugador2Posicion += tirarDado();
    print("Jugador 2 avanza a la casilla ${jugador2Posicion}");
    if (jugador2Posicion >= casillaFinal) {
      print("¡El jugador 2 ha ganado!");
      break outerLoop; // Termina el juego
    }
  }

  
}
