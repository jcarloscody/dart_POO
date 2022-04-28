void main() {
  //tipo generico - nada mais é que um tipo de abstração. dá a possibilidade de receber qq coisa
  List<int> o = [12, 2, 12, 1];

  Map<String, int> mapa = {};

  var c = Caixa<Bola>();
}

class Caixa<T> {
  List<T> l = [];
  void adicionar(T b) {
    l.add(b);
  }

  List<T> getL() {
    return l;
  }
}

class Bola implements MetodosEspecificosClasse {
  @override
  void metodoEspecifico() {
    print("object");
  }
}

class Boneca {}

class Telefone {}

abstract class MetodosEspecificosClasse {
  void metodoEspecifico();
}
