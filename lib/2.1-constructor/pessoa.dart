class Pessoa {
  String? nome;
  int? idade;
  String? _sobreNome;
  late final String cidade;

  Pessoa(String nomeConst, String sobreN) {
    nome = nomeConst;
    _sobreNome = sobreN;
  }

  Pessoa.nomeado({this.nome, this.idade, String? sobreNome})
      : _sobreNome = sobreNome;

  Pessoa.nome({required this.nome});

//é utilizado quando temos uma regra de negócio para criação da nossa classe;
  factory Pessoa.fabrica(String sobrenome) {
    return Pessoa.nome(nome: "nome ${sobrenome}");
  }
}
