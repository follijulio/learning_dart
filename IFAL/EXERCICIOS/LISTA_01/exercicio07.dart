import 'dart:io';

void main(List<String> args) {
  var low = 0;
  var number = 0;
  for (var i = 1; i <= 10; i++) {
    print("Digite o $i ª número: ");
    number = int.tryParse(stdin.readLineSync()!) ?? 0;
    if (number < low || i == 0) {
      low = number;
    }
  }
  print("O número mais baixo digitado foi: $low");
}
