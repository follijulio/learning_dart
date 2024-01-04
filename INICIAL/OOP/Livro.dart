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

  int verificar() {
    return this._id;
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
}
