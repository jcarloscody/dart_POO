void main() {
  //callable class nada mais é do q criar uma class e chama la como uma funcao
  var j = Josue();

  j().forEach((element) {
    print(element);
  }); //callable acionada
}

class Josue {
  List<int> linta = [1, 2, 3, 4];
  Iterable<int> call() {
    //metodo que será executado quando a callable for acionada
    print("met call");
    return linta.map((e) => e);
  }

  void andar() {
    print("object");
  }
}
