void main() {
  //callable class nada mais é do q criar uma class e chama la como uma funcao
  var j = Josue();

  j(); //callable acionada
}

class Josue {
  void call() {
    //metodo que será executado quando a callable for acionada
    print("met call");
    return andar();
  }

  void andar() {
    print("object");
  }
}
