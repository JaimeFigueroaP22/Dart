void main(){

final numbers = [1,2,3,4,5,5,5,6,7,8,9,9,10];

print('List original: $numbers');
print('length: ${numbers.length}');
print('Index 0: ${numbers[0]}');
print('First: ${numbers.first}');
print('Reversed: ${numbers.reversed}');

final reverserNumbers = numbers.reversed;

print('Iterable: $reverserNumbers');
print('List: ${ reverserNumbers.toList()}');// lista que muestra totalmente la lista 
print('Set: ${ reverserNumbers.toSet()}'); //valores unicos, no se duplican los valores dentro de la lista

final numbersGreaterThan5 = numbers.where( (int num) {return num > 5 ;}); //muestre los valores mayores a 5

print('>5 : $numbersGreaterThan5'); //iterable
print('>5 : ${ numbersGreaterThan5.toSet()}');
}
