/**
* clase 08: 🥷🏻 Guia funciones
* 🦖 Tomar de referencia JS
*/

void main() {

  voidFun();
  var myReturnFuntion = returnFun();
  print(myReturnFuntion);

  var myOptionalParam = optionalParam('Mr');
  print(myOptionalParam);
  namedParam(age: 30, mail: 'email@site.com');

}

// Declara una funcion que no retorna nada
void voidFun(){
print('no retorno nada?');
}

// Declara una funcion que retornar un string
String returnFun() {
  return 'retorno un string!';
}

String optionalParam(String name, [String lastname = 'Pascal']) {
  return 'Hola, $name $lastname!';
}

void namedParam({required String? mail, int age=30}) {
  print('Edad: $age');
  print('Correo: $mail');
}

int arrowFun(int a, int b) => a + b;