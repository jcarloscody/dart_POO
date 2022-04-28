void main() {}

class Pessoa {
  String? _nome;
//não faz sentido usar gets/sets quando nao há regra de negocio
  String? get nome {
    return _nome;
  }

  set nome(String? nome) {
    _nome = nome;
  }
}
