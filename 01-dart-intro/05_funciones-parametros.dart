void main(){

  print(greetEveryone());
  print(flecha());
  print('Suma: ${ addToNumbers(1, 2)}');
  print('SumaFlecha: ${ addToNumbersFlecha(1, 2)}');
  print('SumaOpcional: ${ addToNumbersOptional(1,2)}');
  print(greetPerson(name: 'Jaime', message: 'Hola, petumare'));

}

String greetEveryone() {
  return 'hola a todos! ';
}
//funciones de flecha 
String flecha() => 'hola a todos fn fleca';

int addToNumbers(int a,int b){
  return a+b;
}

int addToNumbersFlecha(int a, int b) => a+b;

int addToNumbersOptional(int a, [int b = 0 ]/* esto es lo mismo de abajo si b tiene valor mantienelo si no se convierte en 0*/  ){

 // b = b ?? 0; //ve si b tiene un numero mantienelo si no es 0 
 // b ??=0; //lo mismo de arriba, escrito de otra forma

  return a+b;
}

String greetPerson({required name ,String message = 'Hola, '}) /* el {} es para decir q son opcionales, el required es para decir que hay q proporcionalo si o si */{
  return '$message $name';
}