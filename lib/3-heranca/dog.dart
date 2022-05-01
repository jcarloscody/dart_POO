import 'package:dart_poo/3-heranca/animal.dart';

class Dog extends Animal {
  Dog(String end) : super(enderco: end);

  @override
  String getNome() {
    return "sem nome";
  }
}
