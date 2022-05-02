void main() {
  Pessoa p = Josue();
  Pessoa p2 = Josue();
  Pessoa p3 = Enzo();
  print("p2 é Josue ${p2 is Josue}");
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
