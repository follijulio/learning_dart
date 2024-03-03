import 'dart:io';

void main(List<String> args) {
  print("Qual a sua data de nascimento (exemplo: 2020): ");
  int birthYear = int.parse(stdin.readLineSync()!);
  int age = idade(birthYear);
  print("Você deve ter $age");
}

int idade(int birthYear) {
  int date = DateTime.now().year;
  return date - birthYear;
}
