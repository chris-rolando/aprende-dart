/**
* clase 02: tipos de datos.
* 🥷🏻 Dart puede inferir tipos, 👑 tratar de no hacerlo.
* 🤖 Sintaxis: tipo_de_dato nombre_de_variable = valor_asignado;
*/

main() {
  print('Clase 02: Tipos de datos en Dart');

  // 1- Infierrir tipos 
  // 🦖 el compilador "adivina" el tipo de dato
  
  var inferirTipo = "esto es un string!";
  print('\nTipo inferido: $inferirTipo');

  // 2- Específicar tipos

  int edad = 30;
  double pi = 3.14159;
  print('\nEjemplo int: $edad \nEjemplo double:$pi');

  // Num: 🦖 puede ser int o double
  num cantidad = 1111;
  print('\nEjemplo num: $cantidad');

  // Nulos: 🦖 el valor puede no estar definido
  int? generico;
  print('\nEjemplo nulo: $generico');

  bool isActive = true;
  bool isNotActive = !isActive; // invierte el valor
  print('\nEjemplo bool: $isActive y su valor invertido $isNotActive');

  String nombre = 'Pascal';
  String apellido = 'Stark';

  String nombreCompleto = '\nEjemplo de string $nombre $apellido \n';
  print(nombreCompleto);

  String multilinea = '''
  Ejemplo    multi linea
  respEta el formato asignado
  ''';
  print(multilinea);

  // Lists - Listas
  // 🚀 Almacena colección ordenada de elementos del mismo tipo
  // 🦖 Un array en JS!
  // 🔑 Permite duplicación
  // 🤖 Sintaxis: List<tipo> nombreLista = [];
  print('\nEjemplo de Lista');

  // Declarando una List
  List<String> frutas = ['manzana', 'banana', 'pera'];

  // Agregando un nuevo elemento
  frutas.add('fresa');

  print('\nAccediendo a un elemento por índice 1');
  print(frutas[1]); // banana?
  
  print('\nIterando sobre los elementos:');
  for (var fruta in frutas) {
    print(fruta);
  }

  // Sets
  // 🚀 Almacenar colección no ordenada de elementos únicos
  // 🔑 Sin duplicación
  // 🤖 Sintaxis: Set<String> nombreSet = {};
  print('\nEjemplo de Set');

  // Declarando un Set
  Set<String> masFrutas = {'melon', 'sandia', 'aguacate'};

  // Agregando un nuevo elemento
  masFrutas.add('uva');

  print('\nVerificando si existen elemetos');
  bool lemon=masFrutas.contains("limon");
  print('Contiene limon? $lemon'); // false
  bool grape=masFrutas.contains("uva");
  print('Contiene uva? $grape'); // true

  print('\nIterando sobre los elementos:');
  for (var fruta in masFrutas) {
    print(fruta);
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
  Map<String, String> frutasMap = {
    'manzana': 'roja',
    'banana': 'amarilla',
    'uva': 'morada'
  };

  // Agregando elementos
  frutasMap['pera'] = 'verde';

  print('\nIterando sobre los elementos:');
  for (var fruta in frutasMap.keys) {
    print('La $fruta es ${frutasMap[fruta]}');
  }
}
