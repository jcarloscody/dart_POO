import 'dart:ffi';

void main() {}

//abstract class - pode ter metodos implementados
abstract class Carro {
  void velocidadeMaxima() {
    print("metodo implementado - abstract class");
  }
}

//interface - nao pode ter metodos implementados
abstract class Pessoa {
  abstract String nome;
  abstract String address;

  void andar();
  Double voar();
}

//implementar
class Josue implements Pessoa {
  @override
  String address;

  @override
  String nome;

  Josue(this.address, this.nome);

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
