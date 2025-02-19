void main(){

//como si fuera una instancia http
final Map<String, dynamic> rawJson = {
  'name': 'Tony Stark',
  'power' : 'Money',
  'isAlive' : true
};

//final ironman = Hero(name: 'Tony Starck', power: 'Money', isAlive: false);

//se llama a la funcion para que esta busque los valores dentro del constructor y los pase.
final ironman = Hero.fromJson(rawJson);

print(ironman);

}

class Hero {
  String name;
  String power;
  bool isAlive;

//Constructor
  Hero ({
    required this.name,
    required this.power,
    required this.isAlive
  });

  Hero.fromJson(Map<String, dynamic> Json) //declarar que pueden ser nulos con el ??
  :name = Json['name'] ?? 'No Name Found',
   power = Json['power'] ?? 'No Power Found',
   isAlive = Json['isAlive'] ?? 'No isAlive Found';

@override
  String toString() {
    return '$name  $power, isAlive: ${ isAlive ? 'YES!' : 'Nope' }'; //el isAlive es un ternario, dice si isAlive es tru diga yes si es false Nope
  }

}