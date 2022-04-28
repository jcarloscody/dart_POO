import 'package:dart_poo/2-class/carro.class.dart';
import 'package:dart_poo/4-associacao/pessoa.dart';

void main() {
  //mixin é a forma q inventaram aqui no dart de fazer heranças multíplas.
  //vc nao pode extender

  //obs: o with aceita tanto mixins quanto abstract class
}

//mixin fica depois do extends e antes do implements
class Josue extends Pessoa with Dancar, MixinQ implements Q {}

abstract class Q {}

class Gol extends Carro with MixinQ {
  Gol(String cor, int n) : super(cor: cor, nPortas: n);
}

//aqui cria um mixin que pode ser usado para apenas quem é Pessoa
mixin Dancar on Pessoa {}

mixin MixinQ {}
