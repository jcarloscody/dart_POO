void main() {
  //extensions: é a possibilidade de adicionar funcoes dentro de classes que nao tem codigo fontes.
  var nome = "josee";

  print(nome.digaOla());
}

extension FuncaoExtension on String {
  //estou agregando metodos dentro de String, dentro de uma class q nao temos o condigo fonte
  String digaOla() {
    return "Olá, string ${this}";
  }

  String souOutroMetodo() {
    return "Sou outro método! ${this}";
  }
}
