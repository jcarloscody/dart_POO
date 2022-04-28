class Pessoa {
  String? nome;

  //associacao - Pessoa tem endereco
  //modo - composição - quando um atributo de associação é obrigatório
  Endereco ende = Endereco();

  //associação por agregação
  Telefone? tel; //o atributo que pessoa "tem" é opcional
}

class Endereco {}

class Telefone {}
