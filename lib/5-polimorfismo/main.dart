void main() {
  //polimorfismo: está totalmente ligada a herança. - sobrescrita de métodos
  var medicos = [
    Anestesista(name: "Anestesista"),
    Obstetra(name: "Obstetra"),
    Pediatra(name: "Pediatra"),
    NadaHaver(name: "NadaHaver"),
  ];

  for (var item in medicos) {
    print(item.name);
    item.operar();
  }
}

abstract class Medico {
  String name;
  Medico({required this.name});
  void operar();
}

class Anestesista extends Medico {
  String name;
  Anestesista({required this.name}) : super(name: name);
  @override
  void operar() {
    print("Anestesista");
  }
}

class Obstetra extends Medico {
  String name;
  Obstetra({required this.name}) : super(name: name);
  @override
  void operar() {
    print("Obstetra");
  }
}

class Pediatra extends Medico {
  String name;
  Pediatra({required this.name}) : super(name: name);
  @override
  void operar() {
    print("Pediatra");
  }
}

class NadaHaver extends Pediatra {
  String name;
  NadaHaver({required this.name}) : super(name: name);
  @override
  void operar() {
    print("dando um operar na filha de pediatra");
  }
}
