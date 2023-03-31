import 'pessoa.dart';

class PessoaFeliz extends Pessoa {
  PessoaFeliz(super.nome, super.idade);

  @override
  void printarNome() {
    print("meu nome é $nome, estou feliz");
  }

  void sorrir() {
    print("$nome está sorrindo");
  }
}
