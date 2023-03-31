abstract class Pessoa {
  final String nome;
  final int idade;

  Pessoa(this.nome, this.idade);
  void printarNome() {
    print("meu nome é $nome");
  }
}
