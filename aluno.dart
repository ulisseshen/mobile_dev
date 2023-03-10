// class Aluno extends Object {
class Aluno {
  final String _nome;
  final int _idade;

  Aluno(this._nome, this._idade);

  @override // @sobrepor || @sobreescrever
  String toString() {
    // o método toString é herdado da classe Object
    return "O nome do aluno(a) é $_nome, e sua idade é $_idade anos.";
    // return "nada";
  }

// funções que pertencem às classes são denominados
// métodos. Que são métodos da classe
// e representa uma ação, o retorna um valor
  String pegarNome() {
    return "O nome do aluno(a) é $_nome";
  }

  String pegarSomenteNome() {
    return _nome;
  }

  String pegarIdade() {
    return "A idade do aluno(a) é $_idade anos";
  }
}
