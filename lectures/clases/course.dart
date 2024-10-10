/**
* clase 09: clase
* 🔑 Ejemplo de una clase
*
* 🦖 Tomar de referencia c sharp
*
* Temas:
* 👍 Estructura de una clase basica
* 👍 Propiedades: públicas y privadas
* 👍 Constructores
* 👍 Getters & Setters
* 👍 Constructores con nombre: 🤖 sirve para crear instancias con diferentes configuraciones iniciales.
* 👍 Propiedades finales: 🤖 sirve para garantiza que un valor no cambie después de la creación del objeto (su valor debe ser asignado en el constructor o en su declaración).
* 👍 Constructores constantes: 🤖 sirve para crear objetos inmutables (las propiedades finales deben ser inicializadas).
*/

// Estructura de una clase {llamada Curso}
class Course {
  // Propiedades privadas
  String _courseName;
  int _courseDuration;

  // Propiedades públicas
  String profesor;

  // Constructor
  Course(this._courseName, this._courseDuration, this.profesor, this.courseLocation);

  // Getter {para obtener el nombre del curso}
  String get nombre => _courseName;

  // Setter {para cambiar la duración del curso}
  set duracionEnHoras(int nuevaDuracion) {
    if (nuevaDuracion > 0) {
      _courseDuration = nuevaDuracion;
    } else {
      print('La duración del curso debe ser mayor a 0.');
    }
  }

  // Constructor con nombre {para crear cursos intensivos}
  
  factory Course.intensivo(String nombre, int duracion) {
    return Course(nombre, duracion, 'Profesor Intensivo', 01);
  }

  // Propiedades finales
  final int courseLocation;

  // Constructor constante
  // const Course.constant(this._courseName, this._courseDuration, this.profesor, this.courseLocation);
  
  // Método para obtener información del curso
  String obtenerInformacion() {
    return 'Curso: $_courseName, Duración: $_courseDuration horas, Profesor: $profesor';
  }
}


