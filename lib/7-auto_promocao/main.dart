void main() {
  //auto promoção é a conversão.
  Pessoa p = Josue();
  Pessoa p2 = Josue();
  Pessoa p3 = Enzo();
  print(
      "p2 é Josue ${p2 is Josue}"); //quando checamos se a variavel é (is) de um tipo, caso ela seja o dart vai automaticamente
  //essa instancia para a classe do tipo.
  print("p3 é Josue ${p3 is Josue}");
  print("p3 é Enzo ${p3 is Enzo}");

  p = p as Josue; //agora "p" tem acesso aos metodos especificos de Josue
  p.voar();
  p.andar();

  (p2 as Josue).voar(); // agora "p" tem acesso aos metodos especificos de josue
}

class Pessoa {
  void andar() {
    print("Pessoa andando");
  }
}

class Josue extends Pessoa {
  void voar() {
    print("Josue voando");
  }
}

class Enzo extends Pessoa {}
