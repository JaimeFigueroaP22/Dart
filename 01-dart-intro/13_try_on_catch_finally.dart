void main() async{

  print('Inicio del programa');

  try{
    final value = await httpGet('www.http.cl');
    print('exito: $value');

  } on Exception catch (err) { //para errores controlados con exception
    print('Tenemos una Excepcion:$err');

  } catch(err){ //para manejo de errores no controlados
    print('OOPS tenemos una Error, $err');

  }finally{
    print('Fin del try y catch');

  }
 
  print('Fin del programa');
}
//async es para decir que siempre va a devolver un Future
Future<String> httpGet(String url) async{

  await Future.delayed(Duration(seconds: 1));
  throw Exception('No hay parametros en la URL');
  //throw 'Error en la peticion';

}