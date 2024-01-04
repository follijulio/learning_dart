import 'dart:io';
import 'Livro.dart';

class Menu {
  void menu(List biblioteca, List funcionarios) {
    print("O QUE DESEJA FAZER?");
    print("1 - VER LIVROS");
    print("2 - EMPRESTAR LIVROS");
    print("3 - DEVOLVER LIVROS");

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
    }
  }

  void exibirLivros(List biblioteca, int modo) {
    for (int i = 0; i < biblioteca.length; i++) {
      print("\n\n| - - - - - - - - - - - LIVRO - - - - - - - - - - - |\n\n");
      print(biblioteca[i].exibirInfos());
    }
  }

  void emprestarLivro(List biblioteca) {
    int indiceLivro =
        obterIndiceLivro(biblioteca, "QUAL O LIVRO QUE DESEJA EMPRESTAR?");
    realizarOperacaoLivro(biblioteca, indiceLivro,
        "Empréstimo realizado com sucesso!", "Livro não encontrado.");
  }

  void devolverLivro(List biblioteca) {
    int indiceLivro =
        obterIndiceLivro(biblioteca, "QUAL O LIVRO QUE DESEJA DEVOLVER?");
    realizarOperacaoLivro(
        biblioteca, indiceLivro, "Livro devolvido!", "Livro não encontrado.");
  }

  int obterIndiceLivro(List biblioteca, String mensagem) {
    exibirLivros(biblioteca, 1);
    print(mensagem);
    print("=>: ");
    return int.tryParse(stdin.readLineSync()!) ?? -1;
  }

  void realizarOperacaoLivro(List biblioteca, int indice,
      String mensagemSucesso, String mensagemFalha) {
    if (indice >= 0 && indice < biblioteca.length) {
      Livro livroEscolhido = biblioteca[indice];

      for (int i = 0; i < biblioteca.length; i++) {
        if (biblioteca[i].verificar() == livroEscolhido.verificar()) {
          biblioteca[i]
              .emprestar(); // Assumindo que emprestar() é um método na classe Livro.
          print(mensagemSucesso);
          return;
        }
      }

      print(mensagemFalha);
    } else {
      print("Opção inválida.");
    }
  }
}
