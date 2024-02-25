import 'dart:io';

void main(List<String> args) {
  int date = DateTime.now().year;
  int birthYear;
  String valueAux;
  print("Qual a sua data de nascimento (exemplo: 2020): ");
  valueAux = stdin.readLineSync()!;
  birthYear = int.parse(valueAux);
  print(date);
  print(
      "Se você nasceu em $birthYear e estamos em $date, você tem ${date - birthYear}");
}