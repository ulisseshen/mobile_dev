import 'pessoa.dart';

class Aluno extends Pessoa {
  Aluno(String nomeAluno) : super(nomeAluno);

  @override
  String toString() {
    return "Aluno($nome)";
  }
}
