void main() {
  //polimorfismo: está totalmente ligada a herança. - sobrescrita de métodos
  var medicos = [
    Anestesista(),
    Obstetra(),
    Pediatra(),
    NadaHaver(),
  ];

  for (var item in medicos) {
    item.operar();
  }
}

abstract class Medico {
  void operar();
}

class Anestesista extends Medico {
  @override
  void operar() {
    print("Anestesista");
  }
}

class Obstetra extends Medico {
  @override
  void operar() {
    print("Obstetra");
  }
}

class Pediatra extends Medico {
  @override
  void operar() {
    print("Pediatra");
  }
}

class NadaHaver extends Pediatra {
  @override
  void operar() {
    print("dando um operar na filha de pediatra");
  }
}
