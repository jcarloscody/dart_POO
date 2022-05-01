import 'package:dart_poo/3-heranca/heranca_covariante/banana.dart';
import 'package:dart_poo/3-heranca/heranca_covariante/fruta.dart';
import 'package:dart_poo/3-heranca/heranca_covariante/mamifero.dart';

class Macaco extends Mamifero {
  @override
  void comer(Banana banana) {
    print(banana.impressao());
  }
}
