import 'super_animal.dart';

class Animal extends SuperAnimal {
  int? idade;
  String? cor;

  Animal({required String enderco}) : super(address: enderco);

  @override
  String getNome() {
    return this.cor ?? "sem cor";
  }
}
