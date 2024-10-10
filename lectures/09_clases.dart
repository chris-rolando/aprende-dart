import 'clases/course.dart';

/**
* clase 02: Guia tipos de datos
* 🔑 Muestra el uso de los tipos de datos:
* - 1 Tipos inferidos
* - 2 Tipos especificos
*
* 🦖 Dart puede inferir tipos, 👑 tratar de no hacerlo.
*
* 🤖 tipo_dato nombre_variable = valor;
*/

main() {
 
  Course cursoProgramacion = Course('Programación en Dart', 40, 'Juan Pérez', 01);
  print(cursoProgramacion.nombre); // Imprime: Programación en Dart

  cursoProgramacion.duracionEnHoras = 60; // Cambia la duración
  print(cursoProgramacion.obtenerInformacion());

  // const cursoConstante = Course.constant('Dart Avanzado', 30, 'Juan Pérez', 123);

}