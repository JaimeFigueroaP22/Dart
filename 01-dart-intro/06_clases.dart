void main(){

  final Hero wolverine = Hero(name: 'Logan' , power: 'Regeneracion');

  print(wolverine);
  print(wolverine.name);
  print(wolverine.power);

}

class Hero {
 String name;
 String power;

//Construcctor
  //Hero (this.name, this.power);
  
  Hero ({
    required this.name,
    this.power = 'Sin poder'
    });

// Esto es para que cuando no imprimo una variable de la clase Hero imprima el contenido y no que es una Instancia de Hero
  @override //es para indicar que estos sobre escribiendo un comportamiento nativo en este caso el toString
  String toString() {
    return '$name - $power';
  }

 /* Hero(String pName , String pPower)
 : name = pName,
   power = pPower;
   */ //esto se ocupa en algunas situaciones.
}