void main() {
  //possibilita fazer tipo um spread de atributos do objeto. vai ser como uma cascata
  var p = Pessoa()
    ..email = "sdsd"
    ..nome = "noe";
}

class Pessoa {
  String? nome;
  String? email;
}
