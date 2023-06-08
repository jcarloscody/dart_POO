void main() {
  var c = Cliente("zome");
  var c2 = Cliente("lk");
  var c3 = Cliente("wk");

  var l = [c, c2, c3];
  l.sort();
  l.forEach((element) {
    print(element.nome);
  });
  l.sort(((a, b) => a.nome.compareTo(b.nome)));
}

class Cliente implements Comparable<Cliente> {
  //com essa comparação default, bastará chamar o .sort quando o objeto estiver numa list
  String nome;
  Cliente(this.nome);

  @override
  int compareTo(Cliente other) {
    return nome.compareTo(other.nome); //o .sort sempre vai comparar pelo nome
  }
}
