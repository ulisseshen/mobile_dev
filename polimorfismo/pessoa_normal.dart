import 'pessoa.dart';

class PessoaNormal extends Pessoa {
  PessoaNormal(super.nome, super.idade);

  @override
  void printarNome() {
    print("meu nome é $nome, to de boa");
  }
}
