import 'dart:io';

void main(List<String> args) {
  String valor = '';
  var number = 0;
  var i = 1;
  var alto = 0;
  do {
    print("Digite o $i ª número: ");
    valor = stdin.readLineSync()!;
    number = int.tryParse(valor) ?? 0;
    if (number > alto) {
      alto = number;
    }
    i++;
  } while (number != -1);
  print("O número mais alto é: $alto");
}
