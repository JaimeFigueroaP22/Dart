void main() {
final Map<String, dynamic> pokemon = {
  'name': 'Ditto',
  'hp' : 100,
  'isAlive': true,
  'abilities': <String>['impostor'],
  'sprites' : {
    1: 'ditto/front.png',
    2: 'ditto/back.png'
  }
};

final pokemons = {
  1: 'abc',
  2:'xyc',
  120: 'agjh',
};

  print(pokemon);
  print(pokemons);

  print('Name : ${ pokemon['name'] }');
  print('Name : ${ pokemon['sprites'] }');

  print('Name : ${ pokemon['sprites'][2] }');
  print('Name : ${ pokemon['sprites'][1] }');

}