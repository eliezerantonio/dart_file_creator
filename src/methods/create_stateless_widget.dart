import 'dart:io';

void createStatelessWidget(String className) {
  var snakeCaseName =  className.replaceAllMapped(RegExp(r'([a-z])([A-Z])'), (match) {
    return '${match.group(1)}_${match.group(2)}';
  }).toLowerCase();

  var folderName = snakeCaseName;
  var archiveName = '$folderName/$snakeCaseName.dart';

  Directory(folderName).createSync(recursive: true);

  var archiveContent = '''
import 'package:flutter/material.dart';

class $className extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Adicione a construção do widget aqui
    return Container();
  }
}
  ''';

  File(archiveName).writeAsStringSync(archiveContent);

  print('Pasta e arquivo Dart para StatelessWidget criados com sucesso.');
}
