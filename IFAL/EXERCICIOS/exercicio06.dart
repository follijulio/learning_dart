import 'dart:io';

void main(List<String> args) {
  String altura;
  double alturaMedia = 0;
  for (var i = 0; i < 10; i++) {
    print("Qual a altura do indivíduo $i?: ");
    altura = stdin.readLineSync()!;
    alturaMedia = alturaMedia + double.parse(altura);
  }
  print("A altura média dos indivíduos é ${alturaMedia / 10}");
}
