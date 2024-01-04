import 'Pessoa.dart';

class Funcionario extends Pessoa{
  late int _codigo;
  Funcionario(this._codigo, super.nome, super.cpf, super.nascimento);
  
}