import 'Autor.dart';

class Livro {
  late int _id;
  late String _titulo;
  late int _paginas;
  late String _genero;
  late Autor _autor;
  late bool _emprestado;

  Livro(
      this._id,
      this._titulo,
      this._paginas,
      this._genero,
      this._emprestado,
      String idAutor,
      String pseudonimo,
      String nome,
      String cpf,
      String nascimento)
      : _autor = Autor(idAutor, pseudonimo, nome, cpf, nascimento);

  bool verificar() {
    return this._emprestado;
  }

  emprestar() {
    if (!this._emprestado) {
      this._emprestado = true;
    } else {
      print("Este livro já está emprestado!");
    }
  }

  devolver() {
    if (!this._emprestado) {
      print("Livro devolvido");
      this._emprestado = false;
    } else {
      print("O livro não pode ser devolvido porque ainda está emprestado");
    }
  }

  void exibirInfos() {
    String _situacao = "disponível";
    if (_emprestado) {
      _situacao = "emprestado";
    }
    print("Título: $_titulo");
    print("Gênero: $_genero");
    print("PÁGINAS: $_paginas");
    print("SITUAÇÃO: $_situacao");
    print(_autor.exibirInfos());
  }

  get id => this._id;

  set id(value) => this._id = value;

  get titulo => this._titulo;

  set titulo(value) => this._titulo = value;

  get paginas => this._paginas;

  set paginas(value) => this._paginas = value;

  get genero => this._genero;

  set genero(value) => this._genero = value;

  get autor => this._autor;

  set autor(value) => this._autor = value;

  get emprestado => this._emprestado;

  set emprestado(value) => this._emprestado = value;
}
