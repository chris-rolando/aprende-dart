/**
* clase 02: 🥷🏻 tipos de datos en Dart
*/

main() {

  // # Infierrir el tipo: 🦖 el compilador infiere el tipo de dato
  var nombre = "Hello Dart";
     
  // # Tipos específicos: ## 1- Números

  int edad = 30;

  // ## 2- Flotante
  
  double pi = 3.14159;

  // ## 3- Num: 🦖 puede ser int o double

  num cantidad = 1111;

  // ## 4- Nulos: el valor puede no estar definido

  int? generico;
 
  // ## 5- Strings

  String nombre  = 'Pascal';
  String apellido = 'Stark';

  String nombreCompleto = '$nombre $apellido';

  String multilinea = '''
  ¿Hey?
  $nombreCompleto 
  ''';
  
  print(multilinea);

  // ## 6- Bools
  bool isActive = true;
  bool isNotActive = !isActive;

  // ## 7- Lists
  // 🚀 Almacenar una colección ordenada de elementos del mismo tipo
  // 🔑 Permite duplicación
  // 🤖 Sintaxis: List<tipo> nombreLista = [];

  // Declarando una List 
  List<String> frutas = ['manzana', 'banana', 'pera'];

  // Agregando un nuevo elemento
  frutas.add('limon');

  // 🤖 Accediendo a un elemento por índice
  print(frutas[0]); // Imprimirá: manzana

  // Iterando sobre los elementos de la lista
  for (var fruta in frutas) {
    print(fruta);
  }
  
  // ## 8- Sets
  // 🚀 Almacenar una colección de elementos únicos
  // 🔑 Sin duplicación
  // 🤖 Sintaxis: List<tipo> nombreLista = [];

  // Declarando un Set
  Set<String> masFrutas = {'manzana', 'banana', 'pera'};

  // Agregando un nuevo elemento
  masFrutas.add('uva');

  // 🤖 Verificando si un elemento existe
  print(masFrutas.contains('limon')); // Imprimirá false
  print(masFrutas.contains('uva')); // Imprimirá false

  // Iterando sobre los elementos del conjunto
  for (var fruta in masFrutas) {
    print(fruta);
  }

  // ## 9- Maps  / Diccionarios / Objetos literales
  // 🚀 Permiten almacenar pares de clave-valor
  /*
  // 🤖 Sintaxis: Map<TipoDeClave, TipoDeValor> nombreDelMap = {
      clave1: valor1,
      clave2: valor2,
    };
  */

  Map<String, String> frutas = {
  'manzana': 'roja',
  'banana': 'amarilla',
  'uva': 'morada'
  };

  // Agregando un nuevo par
  frutas['pera'] = 'verde';

  // 🦖 Los metodos son imilires a JS
  
}