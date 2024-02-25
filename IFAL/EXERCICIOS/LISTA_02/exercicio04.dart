import 'dart:io';

void main(List<String> args) {
  double b;
  double h;
  double area = 0;
  double perimetro = 0;
  print("Qual o valor de b?: ");
  b = double.parse(stdin.readLineSync()!);
  print("Qual o valor de h?: ");
  h = double.parse(stdin.readLineSync()!);
  print("O que você deseja? \n1 - área\n2 - perímetro");
  int op = int.parse(stdin.readLineSync()!);
  switch (op) {
    case 1:
      area = calc_area(h, b);
      print("A área do retângulo é $area");
      break;
    case 2:
      perimetro = calc_perimetro(h, b);
      print("O perímetro do retângulo é $perimetro");
      break;
    default:
      print("Opção inválida!");
      main(args);
      break;
  }
}

double calc_area(double h, double b) {
  return (h * b);
}

double calc_perimetro(double h, double b) {
  return ((2 * b) + (2 * h));
}
