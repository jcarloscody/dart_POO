import 'animal.dart';

class Dog extends Animal {
  Dog(String end, {required int age}) : super(enderco: end, age: age);

  @override
  String getNome() {
    return "sem nome";
  }
}
