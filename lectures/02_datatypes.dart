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
  print('Tipos de datos');

  // - 1 Tipos inferidos
  // 🦖 el compilador "adivina" el tipo de dato

  var inferredType = "es un string!";
  print('\nTipo inferido: $inferredType');

  // - 2 Tipos especificos

  // Int & double
  int age = 30;
  double pi = 3.14159;
  print('\nEjemplo int: $age \nEjemplo double:$pi');

  // Num: 🦖 puede ser int o double
  num height = 1111;
  print('\nEjemplo num: $height');

  // Nulos: 🦖 el valor puede ser null
  int? canBeNull;
  print('\nEjemplo nulo: $canBeNull');

  // Bool
  bool isActive = true;
  bool isNotActive = !isActive; // invierte el valor
  print('\nEjemplo bool: $isActive y su valor invertido $isNotActive');

  // String
  String name = 'Pascal';
  String lastname = 'Stark';
  String fullname = '\nEjemplo de string $name $lastname \n';
  print(fullname);
  String multi = '''
  Ejemplo    multi linea
  donde se respEta el formato asignado''';
  print(multi);

  // Lists - Listas
  // 🚀 Almacena colección ordenada de elementos del mismo tipo
  // 🦖 Un array en JS!
  // 🔑 Permite duplicación
  // 🤖 List<tipo> nombreLista = [];
  print('\nEjemplo de Lista');

  // Declarando List
  List<String> fruits = ['manzana', 'banana', 'pera'];

  // Agregando elemento
  fruits.add('fresa');

  print('\nAccediendo a un elemento por índice 1');
  print(fruits[1]); // banana

  // Recoriendo List
  print('\nIterando sobre los elementos:');
  for (var fruit in fruits) {
    print(fruit);
  }

  // Sets
  // 🚀 Almacenar colección no ordenada de elementos únicos
  // 🔑 Sin duplicación
  // 🤖 Set<String> nombreSet = {};
  print('\nEjemplo de Set');

  // Declarando Set
  Set<String> fruitsSet = {'melon', 'sandia', 'aguacate'};

  // Agregando elemento
  fruitsSet.add('uva');

  // Comprobando elementos
  print('\nVerificando si existen elemetos');
  bool lemon = fruitsSet.contains("limon");
  print('Contiene limon? $lemon'); // false

  // 🥷🏻 Usar {} para interpolar strings (🦖 hace lo mismo que las dos lineas superiores)
  print('Contiene uva? ${fruitsSet.contains("uva")}'); // true

  // Recoriendo Set
  print('\nIterando sobre los elementos:');
  for (var fruit in fruitsSet) {
    print(fruit);
  }

  // Maps - Diccionarios - Objetos literales
  // 🚀 Almacenar colecciones de pares: clave-valor
  /* 🤖 Map<TipoDeClave, TipoDeValor> nombreDelMap = {
          clave1: valor1,
          clave2: valor2,
        };
  */

  print('\nEjemplo Mapa');

  // Declarando map
  Map<String, String> fruitsMap = {
    'manzana': 'roja',
    'banana': 'amarilla',
    'uva': 'morada'
  };

  // Agregando elementos
  fruitsMap['pera'] = 'verde';

  // Recoriendo map
  print('\nIterando sobre los elementos:');
  for (var fruit in fruitsMap.keys) {
    print('La $fruit es ${fruitsMap[fruit]}');
  }
  
}
