void main(){

final String pokemon = 'Ditto'; //final es para poner una varible que no se cambie
final int hp = 100;
final bool isAlive = true;
final abilities = ['impostor']; //forma 1 lista
final abilities2 = <String>['impostor', 'impostor 2']; //forma 2 de decir es un listado de string 
final List<String> abilities3 = ['impostor']; //forma 3 de decir que es un listado de string

// dynamic == null osea que por defecto son nulas 

  dynamic errorMensaje = 'hola' ; //puede tomar todos los valores dado que es dynamic y puede tomar el valor nulo
  errorMensaje = true;
  errorMensaje =[1,2,3,4,5,6,];
  errorMensaje = {1,2,3,4,5,6};
  errorMensaje = () => true;
  errorMensaje = null;
  
print("""
$pokemon 
$hp
$isAlive
$abilities
$abilities2
$abilities3
$errorMensaje
"""); //variable """ """ para decir q vamos a mostrar muchas varibles 

}