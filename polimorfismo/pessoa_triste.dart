import 'pessoa.dart';

class PessoaTriste extends Pessoa {
  PessoaTriste(super.nome, super.idade);
  @override
  void printarNome() {
    print("meu nome é $nome, estou triste");
    super.printarNome();
  }
}
