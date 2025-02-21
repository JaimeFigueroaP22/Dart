void main(){

  emitNumbers().listen((value){
    print('Stream value: $value');
  });

}

//Steam es un flujo de datos
Stream<int> emitNumbers() {

  return Stream.periodic(const Duration(seconds: 1), (value){
    //print('desde preiodic $value');
    return value;
  }).take(5); //es para decir que quiero que dure hasta estas variaciones 

}