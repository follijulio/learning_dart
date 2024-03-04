void main(List<String> args) {
  Retangulo retangulo = Retangulo(9, 2);
  print(retangulo.calcArea());
  print(retangulo.calcPerimetro());
}

class Retangulo {
  double altura;
  double base;

  Retangulo(this.altura, this.base);
  double calcArea() => base * altura;
  double calcPerimetro() => (2 * base) + (2 * altura);
}
