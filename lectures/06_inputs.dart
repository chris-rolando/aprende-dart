import 'dart:io';

/**
* clase 06: trabajar con imputs
*/

main(){
  
  // El usuario digita texto
  stdout.write('Ingresa un texto: ');

  // Leer  ese texto
  String imputValue = stdin.readLineSync() ?? 'algun texto'; 

  print(imputValue);

}