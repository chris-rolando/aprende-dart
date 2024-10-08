/**
* clase 02: tipos de datos.
* 🔑 Muestra el uso de tipos de datos
* 🥷🏻 Dart puede inferir tipos, 👑 tratar de no hacerlo.
* 🤖 Sintaxis: tipo_de_dato nombre_de_variable = valor_asignado;
*/

main() {
  print('Clase 02: Tipos de datos en Dart');

  // 1- Infierrir tipos
  // 🦖 el compilador "adivina" el tipo de dato

  var inferredType = "es un string!";
  print('\nTipo inferido: $inferredType');

  // 2- Específicar tipos

  int age = 30;
  double pi = 3.14159;
  print('\nEjemplo int: $age \nEjemplo double:$pi');

  // Num: 🦖 puede ser int o double
  num height = 1111;
  print('\nEjemplo num: $height');

  // Nulos: 🦖 el valor puede no estar definido
  int? canBeNull;
  print('\nEjemplo nulo: $canBeNull');

  bool isActive = true;
  bool isNotActive = !isActive; // invierte el valor
  print('\nEjemplo bool: $isActive y su valor invertido $isNotActive');

  String name = 'Pascal';
  String lastname = 'Stark';

  String fullname = '\nEjemplo de string $name $lastname \n';
  print(fullname);

  String multi = '''
  Ejemplo    multi linea
  respEta el formato asignado
  ''';
  print(multi);

  // Lists - Listas
  // 🚀 Almacena colección ordenada de elementos del mismo tipo
  // 🦖 Un array en JS!
  // 🔑 Permite duplicación
  // 🤖 Sintaxis: List<tipo> nombreLista = [];
  print('\nEjemplo de Lista');

  // Declarando una List
  List<String> fruits = ['manzana', 'banana', 'pera'];

  // Agregando un nuevo elemento
  fruits.add('fresa');

  print('\nAccediendo a un elemento por índice 1');
  print(fruits[1]); // banana?

  print('\nIterando sobre los elementos:');
  for (var fruit in fruits) {
    print(fruit);
  }

  // Sets
  // 🚀 Almacenar colección no ordenada de elementos únicos
  // 🔑 Sin duplicación
  // 🤖 Sintaxis: Set<String> nombreSet = {};
  print('\nEjemplo de Set');

  // Declarando un Set
  Set<String> fruitsSet = {'melon', 'sandia', 'aguacate'};

  // Agregando un nuevo elemento
  fruitsSet.add('uva');

  print('\nVerificando si existen elemetos');
  bool lemon = fruitsSet.contains("limon");
  print('Contiene limon? $lemon'); // false
  // 🥷🏻 Usar {} para interpolar strings
  print('Contiene uva? ${fruitsSet.contains("uva")}'); // true

  print('\nIterando sobre los elementos:');
  for (var fruit in fruitsSet) {
    print(fruit);
  }

  // Maps - Diccionarios - Objetos literales
  // 🚀 Almacenar colecciones de pares: clave-valor
  /* 🤖 Sintaxis: Map<TipoDeClave, TipoDeValor> nombreDelMap = {
          clave1: valor1,
          clave2: valor2,
        };
  */

  print('\nMapa de frutas');

  // Declarando un map
  Map<String, String> fruitsMap = {
    'manzana': 'roja',
    'banana': 'amarilla',
    'uva': 'morada'
  };

  // Agregando elementos
  fruitsMap['pera'] = 'verde';

  print('\nIterando sobre los elementos:');
  for (var fruit in fruitsMap.keys) {
    print('La $fruit es ${fruitsMap[fruit]}');
  }
}
