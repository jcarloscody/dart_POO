import 'package:dart_poo/3-heranca/heranca_covariante/fruta.dart';
import 'package:dart_poo/3-heranca/heranca_covariante/mamifero.dart';

class Humano extends Mamifero {
  @override
  void comer(Fruta fruta) {
    print(fruta.impressao());
  }
}
