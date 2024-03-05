import 'dart:io';

void main(List<String> args) {
  var lista = [
    Estudante(
        nome_aluno: "Duda Dursley",
        matricula: 2424,
        endereco: "Rua dos Alfeneiros, nº 4",
        notas: [7, 4, 6, 8]),
    Estudante(
        nome_aluno: "Duda Dursley",
        matricula: 2424,
        endereco: "Rua dos Alfeneiros, nº 4",
        notas: [6, 3, 5, 6]),
    Estudante(
        nome_aluno: "Duda Dursley",
        matricula: 2424,
        endereco: "Rua dos Alfeneiros, nº 4",
        notas: [10, 8, 3, 9])
  ];

  print("1 - Listar os estudantes aprovados e suas notas");
  print("2 - Listar os estudantes reprovados e suas notas");
  print("3 - Listar as matriculas e as notas de todos os estudantes");
  print("4 - Listar os nomes e os endereços de todos os estudantes");
  int resposta_user = int.parse(stdin.readLineSync()!);

  switch (resposta_user) {
    case 1:
      for (int i = 0; i < lista.length; i++) {
        if (lista[i].media() >= 6) {
          print("NOME: ${lista[i].nome_aluno}\nMÉDIA: ${lista[i].media()}");
        }
      }
      break;
    case 2:
      for (int i = 0; i < lista.length; i++) {
        if (lista[i].media() < 6) {
          print("NOME: ${lista[i].nome_aluno}\nMÉDIA: ${lista[i].media()}");
        }
      }
      break;
    case 3:
      for (int i = 0; i < lista.length; i++) {
        print(
            "NOME: ${lista[i].nome_aluno}\n${lista[i].matricula}\nMÉDIA: ${lista[i].media()}");
      }
      break;
    case 4:
      for (int i = 0; i < lista.length; i++) {
        print("NOME: ${lista[i].nome_aluno}\nMÉDIA: ${lista[i].endereco}");
      }
      break;
    default:
  }
}

class Estudante {
  String nome_aluno;
  int matricula;
  String endereco;
  List<double> notas;

  Estudante({
    required this.nome_aluno,
    required this.matricula,
    required this.endereco,
    required this.notas,
  });

  double media() {
    double soma = 0;
    for (var i = 0; i < notas.length; i++) {
      soma += notas[i];
    }
    return soma / notas.length;
  }
}
