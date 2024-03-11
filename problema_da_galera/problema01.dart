import "dart:io";

void main() {
  print(
      "MENU: \n1- Calcular area\n2- Calcular  perímetro\nInforme a opção desejada: ");
  String op = stdin.readLineSync()!;
  int opcao = int.parse(op);
  if (opcao == 1) {
    calcularArea();
  }
  if (opcao == 2) {
    calcularPerimetro();
  }
}

double calcularArea() {
  print('Digite a base do retângulo: ');
  String baseR = stdin.readLineSync()!;
  double base = double.parse(baseR);
  print('Digite a altura do retângulo: ');
  String alturaR = stdin.readLineSync()!;
  double altura = double.parse(alturaR);

  double area = (base * altura);

  print('A base é: $area');
  return base * altura;
}

double calcularPerimetro() {
  print('Digite a base do retângulo: ');
  String base = stdin.readLineSync()!;
  double baseR = double.parse(base);
  print('Digite a altura do retângulo: ');
  String altura = stdin.readLineSync()!;
  double alturaR = double.parse(altura);

  double perimetro = (2 * baseR) + (2 * alturaR);
  print('O perímetro é: $perimetro');
  return (2 * baseR) + (2 * alturaR);
}
