//A POO Programação Orientada a Objetos
//foi criada na década de 1970 por Alan Kay, com o objetivo de se
//opor a outros paradigmas (como a programação funcional) e aproximar
//os softwares dos seres humanos.

import 'aluno.dart';

void main() {
  print("olá mundo");
  // Map aluno = {"nome": "Natã", "idade": 19};

  //Tipo variavel = Contrutor(parametros);
  //a variavel aluno2 é a instância de um objeto
  //da classe Aluno
  Aluno aluno = Aluno("Natã", 19);
  // print(aluno.nome);
  // tem mais 300 linhas de código aqui.

  // quebra do encapsulamento
  // POO fraca.
  // aluno.nome = "Ana Beatriz";

  //tem mais 500 linhas de código aqui...
  // print(aluno.nome);
  // const String nome = "Natã";

  Aluno aluno2 = Aluno("Ana Beatriz", 24);
  // aluno2.nome = "Gustavo";
  print(aluno2.pegarSomenteNome());
  print(aluno2.pegarNome());
  print(aluno2.pegarIdade());

  // List<Aluno> alunos = [aluno, aluno2];

  // print(alunos);

  // print(aluno.toString());
  // abaixo é a mesma coisa que se estivesse usando toString
  print(aluno);
}



// class Aluno {
//   String nome = "Natã";
//   int idade = 19;
// }
