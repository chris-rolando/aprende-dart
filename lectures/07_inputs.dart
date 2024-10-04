import 'dart:io';

main(){
  
  // imprimir texto
  stdout.wirte('Ingresa un texto');

  // leer texto
  String valor = stdin.readLineSync() ?? 'algun texto'; 

  print(valor);

}