import 'dart:convert';
import 'dart:io';

void main() {
  String nome = "Gustavo";
  List<String> nomes = [nome, "bia", "ulisses"];

  escreverArquivoTexto("nomes.txt", nomes.join(", "));

  String nomesTexto = lerArquivoTexto("nomes.txt");
  List<String> nomesSalvos = nomesTexto.split(', ');
  print(nomesSalvos);

  // const string = 'Hello world !';
  // final splitted = string.split(' ');
  // print(splitted); // [Hello, world!];
  List<String> frutas = ['banana', 'maçã', 'pera', 'uva', 'limão'];
  String json = jsonEncode(frutas);
  escreverArquivoTexto("frutas.json", json);

  String frutasTexto = lerArquivoTexto("frutas.txt");
  List<String> frutasSalvas = frutasTexto.split('\n');
  print(frutasSalvas);
}

void escreverArquivoTexto(String arquivo, String informacoes) {
  File file = File(arquivo);
  file.writeAsStringSync(informacoes);
}

String lerArquivoTexto(String arquivo) {
  File file = File(arquivo);
  String informacoes = file.readAsStringSync();
  return informacoes;
}
