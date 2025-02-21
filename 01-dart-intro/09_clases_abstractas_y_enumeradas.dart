void main(){

  final windPlant = EnergyPlant;


}

enum PlantType { nuclear, wint, water } //tipos de planta limitadas



abstract class EnergyPlant {

  double energyLeft;
  PlantType type; // nuclear, wind, water

  EnergyPlant({                       //constructor
    required this.energyLeft,
    required this.type
   });

  void consumeEnergy (double amount); //metodo

}