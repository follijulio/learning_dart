void main(List<String> args) {
  print("digite um valor: ");
  print("Digite um outro valor: ");
  var valor1 = 10;
  var valor2 = 12;
  if (valor1 > valor2) {
    print("O ${valor1} é maior");
  } else if (valor2 > valor1) {
    print("O ${valor2} é maior");
  } else {
    print("Os dois valores são iguais ${(valor1 + valor2) / 2}");
  }
}
