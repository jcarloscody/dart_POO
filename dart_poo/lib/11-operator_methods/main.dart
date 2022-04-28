void main() {
  /**operadores como + - * / == 
   * são tudo METODOS dentro de uma class String, int...
   */

  var n = Numero(10);
  var nn = Numero(20);
  var s = n + nn;
  print(s.i);
}

//vamos criar o nosso method
class Numero {
  int i;
  Numero(this.i);

  Numero operator +(Numero numero2) {
    return Numero(i + numero2.i);
  }
}
