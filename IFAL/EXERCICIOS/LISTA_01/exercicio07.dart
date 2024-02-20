import 'dart:io';

Future<void> main(List<String> args) async {
  var high = 0;
  String value;
  var number = 0;
  for (var i = 1; i <= 10; i++) {
    print("Digite o $i ª número: ");
    value = stdin.readLineSync()!;
    number = int.tryParse(value) ?? 0;
    if (number > high) {
      high = number;
    }
  }
  print("O número mais alto foi: $high");
}
