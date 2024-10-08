/**
* clase 03: Guia var, const, final y late
*
* 🚀 const: es conocida en tiempo de compilación
* 
* 🚀 final: una variable que no cambie después de su inicialización.
* 🔑 uso: constantes de configuración o resultados de cálculos.

* 🚀 late: permite incializar variables después.
* 🔑 uso: cuando el valor de una variable no se conoce pero el tipo si
*/

main() {
  late final String testingVar;

  // Se declara antes y se inicia despues
  testingVar =
      'Este campo se asigna despues de declarar pero no se puede reasignar';

  // testingVar='!Error, por que es declarado usando final';

  print(testingVar);
}
