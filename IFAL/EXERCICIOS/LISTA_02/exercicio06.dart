import 'dart:io';

void main(List<String> args) {
  int op;
  double first_value;
  double second_value;
  double result = 0;
  String type = '';
  print("Qual o tipo de cálculo que deseja fazer?\n");
  print("1 > soma ");
  print("2 > subtração ");
  print("3 > multiplicação ");
  print("4 > divisão");
  op = int.parse(stdin.readLineSync()!);
  print("Primeiro valor: ");
  first_value = double.parse(stdin.readLineSync()!);
  print("Segundo valor: ");
  second_value = double.parse(stdin.readLineSync()!);
  switch (op) {
    case 1:
      result = sum(first_value, second_value);
      type = "soma";
      break;
    case 2:
      result = sub(first_value, second_value);
      type = "subtração";
      break;
    case 3:
      result = mult(first_value, second_value);
      type = "multiplicação";
      break;
    case 4:
      result = div(first_value, second_value);
      type = "divisão";
      break;
  }
  print("O valor da $type é $result");
}

double sum(double first_value, double second_value) {
  return first_value + second_value;
}

double sub(double first_value, double second_value) {
  return first_value - second_value;
}

double div(double first_value, double second_value) {
  return first_value / second_value;
}

double mult(double first_value, double second_value) {
  return first_value * second_value;
}