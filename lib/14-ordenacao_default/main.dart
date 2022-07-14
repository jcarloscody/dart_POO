void main() {
  var c = Cliente("nome");
  var c2 = Cliente("lk");

  var l = [c, c2];
  l.sort();
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
