import 'dart:io';

void main(List<String> args) {
  var number = 0;
  var i = 0;
  var average = 0;
  do {
    print("Digite o $i ª número: ");
    number = int.tryParse(stdin.readLineSync()!) ?? 0;
    if (number != -1) {
      average = average + number;
      i++;
    }
  } while (number != -1);
  print("O número mais alto é: ${average / i}");
}
