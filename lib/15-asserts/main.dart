void main() {
  //asserts: é uma afirmação, é uma validacao,  e com ele podemos fazer algumas verificações em tempo de dev. o objetivo é colocar uma validação nos atributos de uma class.
  var c = Cliente();
}

class Cliente {
  String? nome;
  String? cpf;
  String? cnpf;
  String? razaoSocial;

  Cliente({
    this.cpf,
    this.nome,
    this.cnpf,
    this.razaoSocial,
  }) : assert(
            (cpf != null)
                ? nome != null && razaoSocial == null && cnpf == null
                : true,
            "Voce enviou cpf junto com cnpj");
}
