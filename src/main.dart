import 'dart:io';
import 'methods/methods.dart';

void main() {
  print('Digite o nome da classe: ');
  var className = stdin.readLineSync();

  print(
      'Deseja criar uma classe simples do Dart (D) ou um StatelessWidget (S)?');

  var option = stdin.readLineSync()?.toUpperCase() ?? '';

  switch (option) {
    case "D":
      criateDartClass(className!);
      break;
    case 'S':
      createStatelessWidget(className!);
      break;
    default:
      print(
          'Opção inválida. Use "D" para classe simples do Dart ou "S" para StatelessWidget.');
  }
}
