import 'dart:io';

void main(List<String> args) {
  double retorno = 0;
  print("QUAL A EQUAÇÃO QUE DESEJA FAZER?");
  print("1 - SOMA");
  print("2 - SUBTRAÇÃO");
  print("3 - DIVISÃO");
  print("4 - MULTIPLICAÇÃO");
  print("5 - SAIR");
  int resposta = int.tryParse(stdin.readLineSync()!) ?? 0;
  print("PRIMEIRO VALOR: ");
  double num1 = double.tryParse(stdin.readLineSync()!) ?? 0;
  print("SEGUNDO VALOR: ");
  double num2 = double.tryParse(stdin.readLineSync()!) ?? 0;
  switch (resposta) {
    case 1:
      retorno = soma(num1, num2);
      break;
    case 2:
      retorno = sub(num1, num2);
      break;
    case 3:
      retorno = div(num1, num2);
      break;
    case 4:
      retorno = mult(num1, num2);
      break;
    case 5:
      exit(0);
  }
  print("RESPOSTA: ${retorno}");
  main(args);
}

double soma(double valor1, double valor2) {
  return valor1 + valor2;
}

double sub(double valor1, double valor2) {
  return valor1 - valor2;
}

double div(double valor1, double valor2) {
  return valor1 / valor2;
}

double mult(double valor1, double valor2) {
  return valor1 * valor2;
}
