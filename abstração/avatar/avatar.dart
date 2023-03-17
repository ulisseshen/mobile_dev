abstract class Avatar {
  final String body = "segurando xicara de café";
  final String cabeca;
  final String rosto;
  final bool bigode;
  final String oculos;
  final String nome;

  Avatar({
    required this.nome,
    required this.cabeca,
    required this.rosto,
    required this.bigode,
    required this.oculos,
  });

  @override
  String toString() {
    String temBigode = bigode ? "Sim" : "Não";
    return " nome: $nome\n body: $body\n cabeça: $cabeca\n rosto: $rosto\n bigode: $temBigode\n óculos: $oculos";
  }
}
