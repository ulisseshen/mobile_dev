import 'pessoa.dart';

class Professor extends Pessoa {
  Professor(String nomeProfessor) : super(nomeProfessor);

  @override
  String toString() {
    return "Professor($nome)";
  }
}
