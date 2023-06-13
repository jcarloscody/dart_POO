import 'dart:mirrors';

void main() {
  //class que começa com @
  //sao metadados
  //tem packages que usam (flutter modular, mobx...) geração de codigo, então fazem uso
  // de anotações, esta anotacoes sao usadas pelo build runner (gerador de codigo) para fazer leitura
  // da anotacao e fazer algo em cima disso e gerará um codigo. nos não geramos codigo em run time, tempo de execucao
  // ele é gerado antes

  var p1 = Pessoa();

  //leitura
  InstanceMirror instanceMirror = reflect(p1);
  print(instanceMirror.reflectee);

  //pega os metadados
  ClassMirror classMirror = instanceMirror.type;
  print(classMirror.metadata);

  classMirror.metadata.forEach((annotation) {
    var instanceAnnotation = annotation.reflectee;
    print(instanceAnnotation.toString());
    if (instanceAnnotation is Fazer) {
      print(instanceAnnotation.oque);
      print(instanceAnnotation.quem);
    }
  });

  classMirror.declarations.values.forEach(
    (element) {
      if (element is VariableMirror) {
        element.metadata.forEach((element) {
          if (element.reflectee is Fazer) {
            print(element.reflectee.oque);
            print(element.reflectee.quem);
          }
        });
      }

      if (element is MethodMirror) {
        element.metadata.forEach((element) {
          if (element.reflectee is Fazer) {
            print(element.reflectee.oque);
            print(element.reflectee.quem);
          }
        });
      }
    },
  );
}

class Fazer {
  final String quem;
  final String oque;
//o constructor precisa ser const
  const Fazer({required this.oque, required this.quem});
}

@Deprecated("message")
@Fazer(oque: "bolo", quem: "com um cachorro")
class Pessoa {
  @Fazer(oque: "bolo", quem: "com um cachorro")
  void p() {}
}
