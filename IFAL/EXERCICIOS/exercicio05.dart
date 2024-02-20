void main(List<String> args) {
  print("digite um valor: ");
  print("Digite um outro valor: ");
  var value1 = 10;
  var value2 = 12;
  if (value1 > value2) {
    print("O ${value1} é maior");
  } else if (value2 > value1) {
    print("O ${value2} é maior");
  } else {
    print("Os dois valores são iguais ${(value1 + value2) / 2}");
  }
}
