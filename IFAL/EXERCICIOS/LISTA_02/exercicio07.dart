import 'dart:io';

void main(List<String> args) {
  List<double> list = [];
  print("Qual o tamanho do vetor?");
  int length = int.parse(stdin.readLineSync()!);
  for (int i = 0; i < length; i++) {
    print("digite o ${i + 1}° valor: ");
    list.add(double.parse(stdin.readLineSync()!));
  }
  print(mediaF(list));
}

double mediaF(List<double> list) {
  double sum = 0;
  for (int i = 0; i < list.length; i++) {
    sum = sum + list[i];
  }
  return sum / list.length;
}
