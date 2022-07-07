import 'fruta.dart';
import 'mamifero.dart';

class Humano extends Mamifero {
  @override
  void comer(Fruta fruta) {
    print(fruta.impressao());
  }
}
