import 'pessoa.dart';

class PessoaTriste extends Pessoa {
  PessoaTriste(super.nome, super.idade);
  @override
  void printarNome() {
    print("meu nome é $nome, estou triste");
  }

  void chorarEscutandoMusica() {
    print("$nome está chorando e ouvindo música");
  }
}
