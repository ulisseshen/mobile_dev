import '../abstração/avatar/ana_beatriz.dart';
import '../abstração/avatar/avatar.dart';
import '../abstração/avatar/gustavo.dart';
import 'dart:convert';
import '../abstração/pessoa.dart';
import 'personagem.dart';

void main() {
  Gustavo gustavo = Gustavo();
  AnaBeatriz bia = AnaBeatriz();
  // List<Avatar> personagens = [gustavo];
  // print(personagens);
  // print(jsonEncode(personagens));
  // Map pessoa = {"nome": "Natã", "idade": 19};
  Map avatar = {
    "nome": "Natãzin",
    "bigode": gustavo.bigode,
    "rosto": gustavo.rosto,
    "oculos": gustavo.oculos,
    "cabeca": gustavo.cabeca,
    "acessorios": "pulseira"
  };
  Map avatar2 = {
    "nome": "gu",
    "bigode": gustavo.bigode,
    "rosto": gustavo.rosto,
    "oculos": gustavo.oculos,
    "cabeca": gustavo.cabeca,
    "acessorios": "pulseira"
  };
  // print(pessoa);
  // print(jsonEncode(pessoa));
  // print(avatar);
  // print(jsonEncode(gustavo.toMap()));
  // print(jsonEncode(bia.toMap()));
  // print(gustavo.toMap());
  // print(avatar["nome"]);
  Personagem gu = Personagem.fromMap(avatar2);
  Personagem natan = Personagem.fromMap(avatar);
  print(natan.nome);

  print(jsonEncode(gu.toMap()));

  String natanJson = jsonEncode(natan.toMap());
  print(natanJson);

  Map natanMap = jsonDecode(natanJson);
  print(natanMap);

  Personagem natanWeb = Personagem.fromMap(natanMap);
  print(natanWeb);

  // Avatar nata = Avatar();
}
