void main(){
  emitNumber()
  .listen((int value){

    print(value);


  });



}
// async* es que para decir q la funcion esta retornando un Stream 
Stream<int> emitNumber() async* {

  final valuesToEmit = [1,2,3,4,5];

  for (int i in valuesToEmit){
    await Future.delayed(const Duration(seconds: 1));
    yield i; //yield es como darle valores continuos, tipo toma 1, despues toma 2 
  }


}