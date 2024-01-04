import 'Autor.dart';
import 'dart:io';

import 'Livro.dart';
import 'Menu.dart';
import 'Funcionario.dart';

void main(List<String> args) {
  Menu menu = Menu();
  List<Livro> biblioteca = [
    Livro(1, "1984", 334, "Sátira política", false, "1423", "George Orwell",
        "George Orwell", "", "1900"),
    Livro(2, "A Revolução dos Bichos", 250, "Fábula", false, "5678",
        "George Orwell", "George Orwell", "", "1900"),
    Livro(3, "Harry Potter e a Pedra Filosofal", 320, "Fantasia", false, "1234",
        "J.K. Rowling", "J.K. Rowling", "", "1965"),
    Livro(4, "Dom Quixote", 672, "Romance", false, "9101",
        "Miguel de Cervantes", "Cervantes", "", "1547"),
    Livro(5, "O Senhor dos Anéis: A Sociedade do Anel", 480, "Fantasia", false,
        "1122", "J.R.R. Tolkien", "Tolkien", "", "1892"),
    Livro(6, "Orgulho e Preconceito", 416, "Romance", false, "3344",
        "Jane Austen", "Jane Austen", "", "1775"),
    Livro(7, "Ficções", 174, "Contos", false, "5566", "Jorge Luis Borges",
        "Borges", "", "1899"),
    Livro(8, "Guerra e Paz", 1225, "Romance", false, "7788", "Lev Tolstói",
        "Tolstói", "", "1828"),
    Livro(9, "Crônicas de Gelo e Fogo: A Guerra dos Tronos", 694, "Fantasia",
        false, "9900", "George R.R. Martin", "GRRM", "", "1948"),
    Livro(10, "Cem Anos de Solidão", 417, "Realismo Mágico", false, "1122",
        "Gabriel García Márquez", "Gabo", "", "1927"),
  ];
  List<Funcionario> funcionarios = [
    Funcionario(1423, "Julio", "000.000.000-00", "2006"),
  ];

  menu.menu(biblioteca, funcionarios);
}
