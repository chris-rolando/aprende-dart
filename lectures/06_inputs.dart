import 'dart:io';

/**
* clase 06: trabajar con imputs
* 🔑 dart:io para operaciones de entrada y salida
*/

main() {
  // El usuario digita texto
  stdout.write('Ingresa un texto: ');

  // Leer  ese texto
  String imputValue = stdin.readLineSync() ?? 'algun texto';

  print(imputValue);
}
