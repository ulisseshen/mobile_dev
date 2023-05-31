void main() async {
  // final nome = await buscarNome();
  // print(nome);
  await printarNome();
  for (var i = 10; i >= 0; i--) {
    print(i);
    await Future.delayed(Duration(seconds: 1));
  }
}

Future<String> buscarNome() async {
  await Future.delayed(Duration(seconds: 4));
  return "Gustavo";
}

// void printarNome() async {
//   final nome = await buscarNome();
//   print(nome);
// }

Future<void> printarNome() async {
  final nome = await buscarNome();
  print(nome);
}
