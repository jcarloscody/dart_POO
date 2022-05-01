import 'fruta.dart';

abstract class Mamifero {
  void comer(
      covariant Fruta fruta); //covariant - palavra reservada q quer dizer
  //"deixa o dev implementar o q quiser desde q seja filhas ou ela mesma"
}
