// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:io';

void main(List<String> args) {
  var lista = [
    Pessoa("Marcos", 20.0, 1.80),
    Pessoa("Marcos", 10.0, 1.80),
    Pessoa("Marcos", 10000.0, 1.80)
  ];
  print("1 - Mostrar as pessoas que estão abaixo do peso (IMC < 18,5)");
  print(
      "2 - Mostrar as pessoas que estão dentro do peso ideal (IMC > 18,5 e IMC < 25)");
  print("3 - Mostrar as pessoas que estão acima do peso (IMC > = 25) ");
  int resposta_user = int.parse(stdin.readLineSync()!);

  switch (resposta_user) {
    case 1:
    print("ESSES SÃO OS USUÁRIOS COM MENOS DE 18,5 DE IMC");
      for (int i = 0; i < lista.length; i++) {
        if (lista[i].calc_imc() < 18.5) {
          print(lista[i].infos());
        }
      }
      break;
    case 2:
    print("ESSES SÃO OS USUÁRIOS COM O IMC ENTRE 18,5 E 25");
      for (int i = 0; i < lista.length; i++) {
        if (lista[i].calc_imc() > 18.5 || lista[i].calc_imc() < 25) {
          print(lista[i].infos());
        }
      }
      break;
    case 3:
    print("ESSES SÃO OS USUÁRIOS COM MAIS DE 25 DE IMC");
      for (int i = 0; i < lista.length; i++) {
        if (lista[i].calc_imc() >= 25) {
          print(lista[i].infos());
        }
      }
      break;
    default:
  }
}

class Pessoa {
  String _nome;
  double _peso;
  double _altura;

  Pessoa(
    this._nome,
    this._peso,
    this._altura,
  );
  double calc_imc() => _peso / (_altura * _altura);

  String infos() {
    return "\nUSUÁRIO: $_nome" +
        "\nPESO: $_peso" +
        "\nALTURA: $_altura" +
        "\nIMC: ${calc_imc()}";
  }
}
