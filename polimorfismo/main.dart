import 'pessoa_feliz.dart';
import 'pessoa_feliz_estudando.dart';
import 'pessoa_normal.dart';
import 'pessoa_triste.dart';

void main() {
  PessoaNormal pessoaNormal = PessoaNormal("Ulisses", 31);
  PessoaFeliz pessoaFeliz = PessoaFeliz("Natã", 19);
  PessoaTriste pessoaTriste = PessoaTriste("Guh", 19);
  PessoaFelizEstudando pessoaFelizEstudando = PessoaFelizEstudando("Bia", 23);

  pessoaNormal.printarNome();
  pessoaTriste.printarNome();
  pessoaFeliz.printarNome();
  pessoaFelizEstudando.printarNome();
}
