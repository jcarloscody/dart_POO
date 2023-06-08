import 'super_animal.dart';

class Animal extends SuperAnimal {
  int? idade;
  String? cor;

  Animal({required String enderco, required int age})
      : idade = age,
        super(address: enderco);

  @override
  String getNome() {
    return this.cor ?? "sem cor";
  }
}
