import 'pessoa_feliz.dart';

class PessoaFelizEstudando extends PessoaFeliz {
  PessoaFelizEstudando(super.nome, super.idade);

  @override
  void printarNome() {
    print("meu nome é $nome, estou feliz e estou estudando");
  }
}
