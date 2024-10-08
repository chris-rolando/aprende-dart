void main() {
  // Lista de frutas
  List<String> fruitsList = [
    '🍎', // Manzana
    '🍌', // Plátano
    '🍓', // Fresa
    '🍇', // Uvas
    '🍍', // Piña
    '🍒', // Cerezas
    '🍉', // Sandía
    '🥭', // Mango
    '🍑', // Durazno
    '🍊', // Naranja
    '🍍', // Piña
    '🍓', // Fresa
    '🥭', // Mango
  ];

  // Imprimir lista original
  print('Ejemplo: Convertir "list" en "set" para eliminar duplicados:');
  print('\nFrutas con duplicados');
  print('Entrada: $fruitsList');

  var fruitsSet = fruitsList.toSet();
  var fruits = fruitsSet.toList();

  //List<String> fruits = fruitsList.toSet().toList();

  print('\n Frutas sin repetir');
  print('Salida: $fruits');

  // 🦖: Los sets no permiten elementos duplicados, por lo que al convertir la lista en un set, se eliminan automáticamente las frutas repetidas.

}