import 'dart:io';

void main(List<String> args) {
  String value = '';
  var number = 0;
  var i = 0;
  var average = 0;
  do {
    print("Digite o $i ª número: ");
    value = stdin.readLineSync()!;
    number = int.tryParse(value) ?? 0;
    if (number != -1) {
      average = average + number;
      i++;
    }
  } while (number != -1);
  print("O número mais alto é: ${average / i}");
}
