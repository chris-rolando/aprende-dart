import 'dart:io';

/**
* clase 06: Guia imputs
* 🚀 dart:io para operaciones de entrada y salida
*/

main() {
  // El usuario ingresa info
  stdout.write('Ingresa un texto: ');

  // Leer info
  String imputValue = stdin.readLineSync() ?? 'algun texto';

  // Imprimir info
  print(imputValue);
}
