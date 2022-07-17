void main() {
  //conversoes nada mais é q transformar objetos em outra coisa
  var l = [
    Fruta("maça"),
    Fruta("laranja"),
  ];

  var l1 = l.map((e) => Suco(e.nome)).toList();

  var listaDF = {
    "fruta": "maasça",
    "fruta": "laranja",
    "fruta": "melancia",
  };

  var lll = listaDF.map((key, value) => MapEntry("suco", Suco(value)));

  var alunoAdf = <String, Object>{
    "nome": "Rodrigo",
    "cursos": [
      {
        "nome": "Academia do flutter",
        "decricao": "melhor do mundo",
      },
      {
        "nome": "getx",
        "descricao": "getx do mund",
      },
    ]
  };

  final cursosMap = alunoAdf['cursos'] as List;
  final cursos = cursosMap
      .map((e) => Curso(nome: e['nome'], descricao: e['descricao']))
      .toList();

  var felipe = Aluno(nome: alunoAdf['nome'] as String, cursos: cursos);
}

class Suco {
  String sabor;
  Suco(this.sabor);
}

class Fruta {
  String nome;
  Fruta(this.nome);
}

class Curso {
  String nome;
  String descricao;
  Curso({required this.nome, required this.descricao});
}

class Aluno {
  String nome;
  List<Curso> cursos;
  Aluno({required this.nome, required this.cursos});
}
