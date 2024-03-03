import 'dart:io';

void main(List<String> args) {
  print("Qual o número que deseja verificar?: ");
  print(isPair(int.parse(stdin.readLineSync()!)));
}

String isPair(int value) {
  String isPair = (value % 2 == 0 ? "par" : "impar");
  isPair = "O valor $value é " + isPair;
  return isPair;
}
