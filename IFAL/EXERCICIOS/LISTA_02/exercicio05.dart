import 'dart:io';

void main(List<String> args) {
  int op = 0;
  String type = '';
  double converted = 0;
  double temp = 0;
  print("Qual a conversão que deseja fazer?");
  print("1 - Fahrenheit -> Celsius");
  print("2 - Kelvin -> Celsius");
  op = int.parse(stdin.readLineSync()!);
  type = op == 1 ? "Fahrenheit" : "Kelvin";
  print("Qual a temperatura em ${type}?: ");
  temp = double.parse(stdin.readLineSync()!);
  switch (op) {
    case 1:
      converted = fah_to_cel(temp);
      break;
    case 2:
      converted = ke_to_cel(temp);
      break;
  }
  print("A temperatura de $temp em $type é $converted°C.");
}

double fah_to_cel(double temp) {
  return 5 * (temp - 32) / 9;
}

double ke_to_cel(double temp) {
  return temp - 273;
}