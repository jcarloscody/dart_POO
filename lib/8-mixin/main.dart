import 'dart:ffi';

import '../6-interfaces/main.dart';

void main() {
  //mixin é a forma q inventaram aqui no dart de fazer heranças multíplas.
  //vc nao pode extender

  //obs: o with aceita tanto mixins quanto abstract class
}

//mixin fica depois do extends e antes do implements
class Josue extends Pessoa with Dancar, MixinQ implements Q {
  @override
  String address;

  @override
  String nome;

  @override
  void andar() {
    // TODO: implement andar
  }

  @override
  Double voar() {
    // TODO: implement voar
    throw UnimplementedError();
  }
}

abstract class Q {}

class Gol extends Carro with MixinQ {
  Gol(String cor, int n) : super(cor: cor, nPortas: n);
}

//aqui cria um mixin que pode ser usado para apenas quem é Pessoa
mixin Dancar on Pessoa {}

mixin MixinQ {}
