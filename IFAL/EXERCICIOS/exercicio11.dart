import 'dart:io';

void main(List<String> args) {
  double first_number;
  double second_number;
  double result = 0.0;
  String value;

  print("digite o primeiro número");
  value = stdin.readLineSync()!;
  first_number = double.tryParse(value) ?? 0.0;

  print("digite o segundo número");
  value = stdin.readLineSync()!;
  second_number = double.tryParse(value) ?? 0;

  print("Qual o tipo de cálculo que deseja fazer? + - * /: ");
  value = stdin.readLineSync()!;
  int calc = typeCalc(value);
  switch (calc) {
    case 1:
      result = sum(first_number, second_number);
      break;
    case 2:
      result = sub(first_number, second_number);
      break;
    case 3:
      result = div(first_number, second_number);
      break;
    case 4:
      result = mult(first_number, second_number);
      break;
  }
  print("O resultado do cálculo foi: $result");
}

int typeCalc(String value) {
  if (value == "+") {
    return 1;
  } else if (value == "-") {
    return 2;
  } else if (value == "/") {
    return 3;
  } else if (value == "*") {
    return 4;
  }
  return 0;
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
