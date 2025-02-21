void main(){

  final windPlant = WindPlant( initialEnergy: 100 );
  final nuclearPlant = NuclearPlant( energyLeft: 100);

  print( windPlant);
  print('windleft:  ${ chargePhone( windPlant)}');
  print('nuclear:  ${ chargePhone( nuclearPlant)}');
}

  double chargePhone(EnergyPlant plant) { //clase para  cargar el telefono

    if (plant.energyLeft < 10 ){
      throw Exception('not enough energy');
    }

    return plant.energyLeft -10 ;
  }

enum PlantType { nuclear, wind, water } //tipos de planta limitadas



abstract class EnergyPlant {

  double energyLeft;
  final PlantType type; // nuclear, wind, water

  EnergyPlant({                       //constructor
    required this.energyLeft,
    required this.type
   });

  void consumeEnergy (double amount){ //metodo
 //   throw UnimplementedError(); //esto es para que aparesca el errore de que no esta implementada la clase que esta siendo llamada
  
  }
}

// extends: extender o heredar de otra clase o implements
class WindPlant extends EnergyPlant {

  WindPlant ({ required double initialEnergy})
  :super( energyLeft: initialEnergy,  type: PlantType.wind); // para satisfacer en tomar la variables del padre


@override //re escribiendo el metodo
  void consumeEnergy (double amount) {

    energyLeft -= amount;
  }

}



class NuclearPlant implements EnergyPlant {
  @override
  double energyLeft;

  @override
  final PlantType type = PlantType.nuclear;
  
  NuclearPlant ({required this.energyLeft});

  @override //re escribiendo el metodo
  void consumeEnergy (double amount) {

    energyLeft -= (amount * 0.5);
  }

}