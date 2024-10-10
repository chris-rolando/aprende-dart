/**
* clase 09: clases
* 🔑 Muestra la estructura de una clase
*
* 🦖 
*/

class Persona {

  // Campos o propiedades
  String? nombre;
  int? edad;
  String _bio = 'Hola, soy una propiedad privada.';

  // Get y sets
  
  String get bio => _bio.toUpperCase();
  
  set bio( String texto ) => _bio = texto;


  // Constructores
  Persona({ this.edad = 0, this.nombre = 'Sin Nombre'});

  // métodos
  @override
  String toString() => '$nombre $edad $_bio';
}