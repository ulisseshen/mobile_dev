import 'dart:io';

void main() {
  String nome = "Gustavo";
  List<String> nomes = [nome, "bia", "ulisses"];
  File file = File("nomes.txt");
  file.writeAsStringSync(nomes.join(', '));

  String nomesTexto = file.readAsStringSync();
  List<String> nomesSalvos = nomesTexto.split(', ');
  print(nomesSalvos);

  // const string = 'Hello world !';
  // final splitted = string.split(' ');
  // print(splitted); // [Hello, world!];

  List<String> frutas = ['banana', 'maçã', 'pera', 'uva', 'limão'];
  File fileFrutas = File('frutas.txt');
  fileFrutas.writeAsStringSync(frutas.join('\n'));

  String frutasTexto = fileFrutas.readAsStringSync();
  List<String> frutasSalvas = frutasTexto.split('\n');
  print(frutasSalvas);
}
