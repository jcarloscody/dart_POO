import 'dart:mirrors';

void main() {
  //class que começa com @
  //sao metadados

  var p1 = Pessoa();

  var instanceMirror = reflect(p1);
  print(instanceMirror);

  var classMirror = instanceMirror.type;
  print(classMirror);

  classMirror.metadata.forEach((annotation) {
    var instanceAnnotation = annotation.reflectee;
    if (instanceAnnotation is Fazer) {
      print(instanceAnnotation.oque);
      print(instanceAnnotation.quem);
    }
  });
}

class Fazer {
  final String quem;
  final String oque;
//o constructor precisa ser const
  const Fazer({required this.oque, required this.quem});
}

@Fazer(oque: "bolo", quem: "com um cachorro")
class Pessoa {}
