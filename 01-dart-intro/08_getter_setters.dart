void main() {

  final mySquare = Square(side: -10 );

// mySquare.side = 5;

  print('El area es de: ${ mySquare.area}');

  
}

class Square
{
  double _side ; //variable cerradoa solo para usarse en la clase


  Square ({ required double side })
    : assert(side >= 0, 'side must be >= 0'),  //modo para poner condiciones cuando entran variables
       _side = side ; 


  double get area {
    
    return _side * _side ;
  }

  set side(double value){
    print('setting new value $value');
    if (value < 0 ) throw 'Valuye must be > 0 ';

    _side = value;
  }

  double calculateArea() {

    return _side * _side;
  }

}