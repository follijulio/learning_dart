import 'dart:io';

void main(List<String> args) {
  print("Qual o valor de seu salário?: ");
  print(
      "O valor a ser pago é ${calculate(double.parse(stdin.readLineSync()!))}");
}

double calculate(double value) {
  double amount_to_pay = 0.0;
  if (value > 2000.01 && value <= 3500) {
    amount_to_pay = (value * 0.15);
  } else if (value > 3500.01 && value <= 5000) {
    amount_to_pay = (value * 0.22);
  } else if (value > 5000.01) {
    amount_to_pay = (value * 0.30);
  }
  return amount_to_pay;
}