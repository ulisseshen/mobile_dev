import 'aluno.dart';
import 'pessoa.dart';
import 'professor.dart';

void main() {
  print("herança");

  Aluno aluna = Aluno("Ana Beatriz");
  Aluno aluno = Aluno("Gustavo");
  final alunos = [aluno, aluna];

  final professor = Professor("Ulisses Hen");

  // print(alunos);
  // print(professor);

  final professores = [professor];
  final pessoas = [aluno, aluna, professor];

  print(pessoas);

  // final pessoa = Pessoa("Ola");
}
