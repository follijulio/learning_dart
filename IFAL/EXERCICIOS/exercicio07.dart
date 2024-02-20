import 'dart:io';

Future<void> main(List<String> args) async {
  var alto = 0;
  String valor;
  var number = 0;
  for (var i = 1; i <= 10; i++) {
    print("Digite o $i ª número: ");
    valor = stdin.readLineSync()!;
    number = int.tryParse(valor) ?? 0;
    if (number > alto) {
      alto = number;
    }
  }
  print("O número mais alto foi: $alto");
}
