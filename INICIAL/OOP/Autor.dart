import 'Pessoa.dart';

class Autor extends Pessoa {
  late String _idAutor;
  late String _pseudonimo;

  Autor(
      this._idAutor, this._pseudonimo, super.nome, super.cpf, super.nascimento);

  String exibirInfos() {
    return "Nome:" +
        super.nome +
        "\nPseudonimo: " +
        this._pseudonimo +
        "\nNascimento: " +
        super.nascimento +
        "\nID: " +
        this._idAutor +
        "\nCPF: " +
        super.cpf;
  }
}
