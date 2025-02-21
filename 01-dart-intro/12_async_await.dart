void main() async{

  print('Inicio del programa');

  try{
    final value = await httpGet('www.http.cl');
    print(value);
  } catch(err){
    print('Tenemos un erroi, $err');
  }
 

  //lo de arriba cambia lo de abajo con el await
/*
  httpGet('www.http.cl').then((value){
    print(value);
  }).catchError( (err){
    print('Error: $err');
  });
*/
  print('Fin del programa');
}
//async es para decir que siempre va a devolver un Future
Future<String> httpGet(String url) async{

  //Esto es para amenizar el proceso esscrito abajo 
  //await solo se puede utilizar si esta el async osea que si la funcion es asincrona 

  await Future.delayed(Duration(seconds: 1));
  return 'Tenemos un valor de la peticion';
/*
  return Future.delayed( const Duration(seconds: 1), () {

    throw 'Error en la peticion http';

   // return 'Respuesta de la peticion http' ;
  });
*/


}