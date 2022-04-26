class Carro {
  final String _cor;
  int _nPortas; //nao pode ser null então deve ser inicializada
  final bool? vidroEletrico; //final deve ser inicializada
  static bool eCaro = false;
  String? modoDirecao;
  late String nome; //o late sobrescreve qq outra regra.

  Carro({this.vidroEletrico, required String cor, required int nPortas})
      : _cor = cor,
        _nPortas = nPortas;

  //construtor nomeado - esta é a forma de construir mais de um constructor
  Carro.aberto(this._cor, this._nPortas, this.vidroEletrico);

  //construtor de tipo factory, é uma fábrica de instância de pessoa. ele não vai criar de cara
  //a instância, ele vai chamar o método, vai ter a regra de negocio anterior e depois cria a instância
  //em suma vc cria regras de negócios nele antes de criar instâncias
  factory Carro.fabrica(int numPortas) {
    if (numPortas < 3) {
      numPortas = 0;
    }
    return Carro(cor: "er", nPortas: numPortas, vidroEletrico: true);
  }

  bool temVidroEletrico() {
    return vidroEletrico ?? false;
  }

  static bool mudarValor() {
    eCaro = !eCaro;
    return eCaro;
  }

  int get numerosPortas {
    return _nPortas;
  }

  set numerosPortas(int n) {
    _nPortas = n;
  }
}

void main() {
  var c = new Carro(cor: "cor", nPortas: 5);
  c._cor; //dentro de mesmo arquivo acesso atributos encapsulados
}
