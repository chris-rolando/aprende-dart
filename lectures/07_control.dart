import 'dart:io';

/**
* clase 07: control de flujo
*/

main(){

// if else
stdout.writeln('¿Cuál es tu edad?');
  int age = int.parse( stdin.readLineSync() ?? '0');
  
  if ( age >= 21 ) {
    stdout.writeln('Ciudano');
  } else if( age >= 18 ) {
    stdout.writeln('Mayor de edad');
  } else {
    stdout.writeln('Menor de edad');
  }

  

}
