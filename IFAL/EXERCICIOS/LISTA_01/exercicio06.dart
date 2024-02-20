import 'dart:io';

void main(List<String> args) {
  String height;
  double average_height = 0;
  for (var i = 0; i < 10; i++) {
    print("Qual a altura do indivíduo $i?: ");
    height = stdin.readLineSync()!;
    average_height = average_height + double.parse(height);
  }
  print("A altura média dos indivíduos é ${average_height / 10}");
}
