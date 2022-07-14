void main() {
  //== operator method que representa o equals, em outras linguag como java tem dois tipos de igualdades
  //== e .equals() que fazem checagem da referencia de memoria.

  //igualdade por referencia de memoria: o local para onde a variável aponta na memária

  //Quando implementar o metodo equals:   a gente pode implementar o nosso proprio equals para quando queremos definir como serão iguais, quando independente da referencia de memoria, eu quero definir como os objetos sao iguais

  //hashCode: sempre que sobrecresvermos o equal, todos os campos que envolvem a igualdade precisam estar lá tbm no hashCode, pq existem algumas colecoes que usam o parametro hashCode e nao o equals apenas, o proprio list usa o hashCode para localizar um item
}

class Pessoa {
  String? nome;
  String? emaio;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      //verificando se nao sao a mesma referencia de memoria
      return true;
    }

    // var isEquals = false;

    // if (other is Pessoa) {
    //   if (other.nome == nome) {
    //     if (other.emaio == emaio) {
    //       isEquals = true;
    //     }
    //   }
    // }

    // return isEquals;

    return other is Pessoa && other.nome == nome && other.emaio == emaio;
  }

//toda vez que implementar o metodos equals, eu devo implementar o hashCode, pq temos algumas coleçoes
//que usa como parametro de igualdade o hashCode e não apenas o equals. exemplo, a lista para ordenar usa o hashCode
  @override
  int get hashCode {
    return nome.hashCode ^ emaio.hashCode;
  }

  @override
  String toString() {
    // TODO: implement toString
    return super.toString();
  }
}
