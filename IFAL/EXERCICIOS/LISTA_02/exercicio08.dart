import 'dart:io';

void main(List<String> args) {
  List<Pessoa> older_people = [];
  Pessoa older_person = new Pessoa('', 0);
  Pessoa younger_person = new Pessoa('', 0);
  int old_age = 0;
  String name = '';
  int age = 0;
  int younger_age = 10000000000000;

  for (int i = 0; i < 10; i++) {
    print("Nome da pessoa");
    name = stdin.readLineSync()!;
    print("age da pessoa");
    age = int.parse(stdin.readLineSync()!);
    Pessoa pessoa = new Pessoa(name, age);

    if (age > old_age) {
      old_age = age;
      older_person.refactor(pessoa);
    } else if (age < younger_age) {
      younger_age = age;
      younger_person.refactor(pessoa);
    }
    if (pessoa.age > 18) {
      older_people.add(pessoa);
    }
  }

  print("|----------|\nEssa é a lista de pessoas com mais de 18 anos");
  for (int i = 0; i < older_people.length; i++) {
    older_people[i].details();
  }

  print("|----------|\nPessoa mais velha");
  older_person.details();
  print("|----------|\nPessoa mais nova");
  younger_person.details();

}


class Pessoa {
  late String name;
  late int age;

  Pessoa(String name, int age) {
    this.name = name;
    this.age = age;
  }

  void details() {
    print("NOME: ${this.name}");
    print("age: ${this.age}");
  }

  void refactor(Pessoa pessoa) {
    this.name = pessoa.name;
    this.age = pessoa.age;
  }
}
