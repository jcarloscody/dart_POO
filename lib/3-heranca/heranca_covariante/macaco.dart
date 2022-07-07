import 'banana.dart';
import 'mamifero.dart';

class Macaco extends Mamifero {
  @override
  void comer(Banana banana) {
    print(banana.impressao());
  }
}
