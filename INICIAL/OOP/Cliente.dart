import 'Livro.dart';
import 'Pessoa.dart';

class Cliente extends Pessoa {
  late int _limiteLivros;
  late List<Livro> _livros;
  
  Cliente(int limiteLivros, String nome, String cpf, String nascimento)
      : _limiteLivros = limiteLivros,
        _livros = <Livro>[],
        super(nome, cpf, nascimento);
}
