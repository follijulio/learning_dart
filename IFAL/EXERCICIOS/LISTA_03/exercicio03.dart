import 'dart:io';

void main(List<String> args) {
  //! ATRIBUIÇÃO DOS VALORES A LISTA<LIVROS>
  List<Livro> lista = [
    Livro("Harry Potter e a Pedra Filosofal", "Miau Edições", "1997", "Romance",
        "J. K. Rowling", "114223"),
    Livro("Harry Potter e a Câmara Secreta", "Miau Edições", "1998", "Fantasia",
        "J. K. Rowling", "141232"),
    Livro("Harry Potter e o Prisioneiro de Azkaban", "Miau Edições", "1999",
        "Ficção", "J. K. Rowling", "411223"),
  ];

  print("Qual tipo de pesquisa que deseja fazer?");
  print("1 - Listar livros por categoria");
  print("2 - Listar livros por editora");
  print("3 - Listar livros por autor");
  print("4 - Listar todos os livros disponíveis");
  int resposta_user = int.parse(stdin.readLineSync()!);

  switch (resposta_user) {
    case 1:
      var categorias = [];
      for (int i = 0; i < lista.length; i++) {
        bool existe = false;
        for (int y = 0; y < categorias.length; y++) {
          if (categorias[y] == lista[i].categoria) {
            existe = true;
          }
        }
        if (!existe) {
          categorias.add(lista[i].categoria);
        }
      }
      for (int y = 0; y < categorias.length; y++) {
        print("\n\nNa categoria ${categorias[y]} temos");
        for (int i = 0; i < lista.length; i++) {
          if (categorias[y] == lista[i].categoria) {
            print(lista[i].infos());
          }
        }
      }
      break;

    case 2:
      var editoras = [];
      for (int i = 0; i < lista.length; i++) {
        bool existe = false;
        for (int y = 0; y < editoras.length; y++) {
          if (editoras[y] == lista[i].editora) {
            existe = true;
          }
        }
        if (!existe) {
          editoras.add(lista[i].editora);
        }
      }
      for (int y = 0; y < editoras.length; y++) {
        print("\n\nEsses são os livros da editora ${editoras[y]}");
        for (int i = 0; i < lista.length; i++) {
          if (editoras[y] == lista[i].editora) {
            print(lista[i].infos());
          }
        }
      }
      break;
    case 3:
      var autores = [];
      for (int i = 0; i < lista.length; i++) {
        bool existe = false;
        for (int y = 0; y < autores.length; y++) {
          if (autores[y] == lista[i].autor) {
            existe = true;
          }
        }
        if (!existe) {
          autores.add(lista[i].autor);
        }
      }
      for (int y = 0; y < autores.length; y++) {
        print("\n\nEsses são os livros escritos por ${autores[y]}");
        for (int i = 0; i < lista.length; i++) {
          if (autores[y] == lista[i].autor) {
            print(lista[i].infos());
          }
        }
      }
      break;
    case 4:
      print("Esses são os livros disponíveis");
      for (int i = 0; i < lista.length; i++) {
        print(lista[i].infos());
      }
      break;
    default:
  }
}

class Livro {
  String _titulo;
  String _autor;
  String _editora;
  String _isbn;
  String _categoria;
  String _anoEdicao;

  Livro(this._titulo, this._editora, this._anoEdicao, this._categoria,
      this._autor, this._isbn);
  String get titulo => _titulo;
  String get autor => _autor;
  String get editora => _editora;
  String get isbn => _isbn;
  String get categoria => _categoria;
  String get anoEdicao => _anoEdicao;

  set titulo(String titulo) => _titulo = titulo;
  set autor(String autor) => _autor = autor;
  set editora(String editora) => _editora = editora;
  set isbn(String isbn) => _isbn = isbn;
  set categoria(String categoria) => _categoria = categoria;
  set anoEdicao(String anoEdicao) => _anoEdicao = anoEdicao;

  String infos() {
    return ("\n\nTITULO: $titulo" +
        "\nCATEGORIA: $categoria" +
        "\nANO DE EDIÇÃO: $anoEdicao" +
        "\nAUTOR: $autor" +
        "\nEDITORA: $editora" +
        "\nCÓDIGO ISBN: $isbn");
  }
}
