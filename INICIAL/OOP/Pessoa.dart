class Pessoa {
  late String _nome;
  late String _cpf;
  late String _nascimento;

  Pessoa(this._nome, this._cpf, this._nascimento);

  String get nome => _nome;
  set nome(String value) => _nome = value;

  String get cpf => _cpf;
  set cpf(String value) => _cpf = value;

  String get nascimento => _nascimento;
  set nascimento(String value) => _nascimento = value;
}
