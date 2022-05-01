void main() {
  var p1 = Cliente(idade: 12, nome: "çml");
  var p2 = Cliente(idade: 12, nome: "çml");

  print(p1 ==
      p2); //como o const é posto no constructor possibilita apontar para o mesmo objeto quanto possui os mesmos valores de atributos
}

class Cliente {
  final String nome;
  final int idade;

  //construct const - nao pode ter variaveis q podem ser modificadas, entao devem ser finais p ex.

  const Cliente({required this.idade, required this.nome});
}
