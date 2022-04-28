void main() {
  //constructor tear off - uma nova estrutura foi adicionado ao flutter
  //so funciona a partir do dart 2.15
  //possibilita vc enviar construtores para dentro de funcoes

  final nomes = ["hosue", "calrors"];

  final pessoas = nomes.map((e) => Pessoa(e)).toList();

  final pessoasComConstructorsTear =
      nomes.map(Pessoa.nom).toList(); //PASSOU UM CONSTRUCTOR NOMEADO
  final pessoasComConstructorsTear2 =
      nomes.map(Pessoa.new).toList(); //PASSOU UM CONSTRUCTOR DEFAULT

  pessoas.forEach((element) => print(element));
}

class Pessoa {
  String nome;

  Pessoa(this.nome);
  Pessoa.nom(this.nome);

  @override
  String toString() {
    return nome;
  }
}
