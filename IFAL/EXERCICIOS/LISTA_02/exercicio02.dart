import 'dart:io';

void main(List<String> args) {
  String valueAux = '';
  print("Qual o número que deseja verificar?: ");
  valueAux = isPair(int.parse(stdin.readLineSync()!));
  print(valueAux);
}

String isPair(int value) {
  String isPair = value % 2 == 0 ? "par" : "impar";
  isPair = "O valor $value é " + isPair;
  return isPair;
}