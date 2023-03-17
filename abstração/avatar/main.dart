import 'ana_beatriz.dart';
import 'gustavo.dart';
import 'melissa.dart';

void main() {
  // Tipo variavel = Objeto();
  Gustavo gu = Gustavo();
  AnaBeatriz bia = AnaBeatriz();
  Melissa mel = Melissa();

  final personagens = [gu, bia, mel];

  print(personagens);
}
