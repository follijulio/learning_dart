import 'dart:io';
import 'Livro.dart';

class Menu {
  void menu(List biblioteca, List funcionarios) {
    print("O QUE DESEJA FAZER?");
    print("1 - VER LIVROS");
    print("2 - EMPRESTAR LIVROS");
    print("3 - DEVOLVER LIVROS");
    print("4 - SAIR");

    int resposta = int.tryParse(stdin.readLineSync()!) ?? 0;

    switch (resposta) {
      case 1:
        exibirLivros(biblioteca, 0);
        break;
      case 2:
        emprestarLivro(biblioteca);
        break;
      case 3:
        devolverLivro(biblioteca);
        break;
      case 4:
        exit(0);
      default:
        menu(biblioteca, funcionarios);
        break;
    }
    menu(biblioteca, funcionarios);
  }

  void exibirLivros(List biblioteca, int modo) {
    for (int i = 0; i < biblioteca.length; i++) {
      print("\n\n| - - - - - - - - - - - LIVRO - - - - - - - - - - - |\n\n");
      print(biblioteca[i].exibirInfos());
    }
  }

  void emprestarLivro(List biblioteca) {
    String mensagem = "QUAL O LIVRO QUE DESEJA EMPRESTAR?";
    int indiceLivro = encontrarLivro(biblioteca, mensagem);
    Livro livroEscolhido = biblioteca[indiceLivro];
    for (int i = 0; i < biblioteca.length; i++) {
      if (biblioteca[i].id == livroEscolhido.id) {
        if (biblioteca[i].emprestado) {
          int retorno = biblioteca[i].devolver();
          print(retorno);
        }
        return;
      }
    }
  }

  void devolverLivro(List biblioteca) {
    String mensagem = "QUAL O LIVRO QUE DESEJA DEVOLVER?";
    int indiceLivro = encontrarLivro(biblioteca, mensagem);
    Livro livroEscolhido = biblioteca[indiceLivro];
    for (int i = 0; i < biblioteca.length; i++) {
      if ((biblioteca[i].id == livroEscolhido.id) &
          (!biblioteca[i].emprestado)) {
        biblioteca[i].devolver();
      }
      return;
    }
  }

  int encontrarLivro(List biblioteca, String mensagem) {
    exibirLivros(biblioteca, 1);
    print(mensagem);
    print("=>: ");
    return int.tryParse(stdin.readLineSync()!) ?? -1;
  }
}
