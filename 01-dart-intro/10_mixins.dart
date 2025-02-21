abstract class Animal {}

abstract class Mamifero extends Animal {}
abstract class Ave extends Animal {}
abstract class Pez extends Animal {}


mixin class Volador {
  void volar() => print('estoy volando');
}

mixin class Caminate {
  void caminar() => print('estoy caminando');
}

mixin class Nadador {
  void nadar() => print('estoy nadando');
}

//with se ocupar para los mixin
//mixin es un tipo de especializacion a nuestras clases 
class Delfin extends Mamifero with Nadador {}
class Murcielago extends Mamifero with Volador, Caminate {}
class Gato extends Mamifero with Caminate {}


class Paloma extends Ave with Caminate, Volador {}
class Pato extends Ave with Caminate, Nadador, Volador {}

class Tiburon extends Pez with Nadador {}
class PezVolador extends Pez with Nadador, Volador {}

void main(){

  final flipper = Delfin();
  flipper.nadar();

  final batman = Murcielago();
  batman.caminar();
  batman.volar();

  final lucas = Pato();
  lucas.volar();
  lucas.caminar();
  lucas.nadar();

}
