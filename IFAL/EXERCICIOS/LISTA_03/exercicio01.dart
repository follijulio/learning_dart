void main(List<String> args) {
  Circulo circulo = Circulo(19);
  print(circulo.calcularArea());
  print(circulo.calcularPerimetro());
}

class Circulo {
  double _raio;

  Circulo(this._raio);
  double get raio => _raio;
  set raio(double valor) => _raio = valor;

  double calcularArea() => 3.14 * (_raio * _raio);
  double calcularPerimetro() => 2 * 3.14 * _raio;
}
