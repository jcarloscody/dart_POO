import 'dart:ffi';

import '../6-interfaces/main.dart';

void main() {
  //mixin é a forma q inventaram aqui no dart de fazer heranças multíplas.
  //vc nao pode extender

  //obs: o with aceita tanto mixins quanto abstract class
  var J = Josue(address: "address", nome: "nome", nome_danca: "'nome_danca'");
  print(J.tipoDanca());
}

//mixin fica depois do extends e antes do implements
class Josue extends Pessoa with Dancar, MixinQ implements Q {
  @override
  String address;

  @override
  String nome;

  Josue({required this.address, required this.nome, required this.nome_danca});

  @override
  void andar() {}

  @override
  Double voar() {
    throw UnimplementedError();
  }

  @override
  String nome_danca;
}

abstract class Q {}

class Gol extends Carro with MixinQ, MixinNormal {
  //esta dando erro pq o mixin está extendendo outra class, aí seria uma herança multipla.
  Gol(String cor, int n);
}

//aqui cria um mixin que pode ser usado para apenas quem é Pessoa
mixin Dancar on Pessoa {
  abstract String nome_danca;
  String tipoDanca() {
    return nome_danca;
  }
}

mixin MixinQ {}

//este tbm é considerado um mixin comum, porém não pode extender ninguém
abstract class MixinNormal extends X {}

abstract class X {}
