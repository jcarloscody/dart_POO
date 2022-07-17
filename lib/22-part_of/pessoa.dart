//obs: part deve estar após os imports
part 'endereco.dart'; //está declarando que a class a seguir possui parte(s) em outro arquivo
//é como se o dart colasse a outra class aqui
part 'cpf.dart'; //o arquivo é incluido em tempo de execução

//quem usa? vários packages, framework, mobx, bloc, freeze,
//posso fazer merges de arquivos, o proprio compilador vai entender que esses arquivos não são nada sozinhos
class Pessoa {
  //associação do tipo composição: quando atributo é obrigatório
  _Endereco _endereco = _Endereco();
  //associação do tipo agregação: quando atributo é opcional
  _CPF? __cpf;
}
