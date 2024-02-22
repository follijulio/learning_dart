import 'dart:io';

void main(List<String> args) {
  var low = 1000000000000000000;
  var number = 0;
  for (var i = 1; i <= 10; i++) {
    print("Digite o $i ª número: ");
    number = int.tryParse(stdin.readLineSync()!) ?? 0;
    if (number < low) {
      low = number;
    }
  }
  print("O número mais alto foi: $low");
}
