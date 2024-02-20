import 'dart:io';

void main(List<String> args) {
  var number = 0;
  var numberPair = 0;
  String valor;
  do {
    print("Digite o número: ");
    valor = stdin.readLineSync()!;
    number = int.tryParse(valor) ?? 0;
    if (number % 2 == 0) {
      numberPair++;
    }
  } while (number != -1);
  print("A quantidade de números pares é: $numberPair");
}
