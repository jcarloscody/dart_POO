void main() {
  //callabla class nada mais é do q criar uma class e chama la como uma funcao
  var j = Josue();

  j();
}

class Josue {
  void call() {
    print("met call");
    return andar();
  }

  void andar() {
    print("object");
  }
}
