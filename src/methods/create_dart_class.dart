import 'dart:io';

void criateDartClass(String className) {
  
  var snakeCaseName = className.replaceAllMapped(RegExp(r'([a-z])([A-Z])'), (match) {

    return '${match.group(1)}_${match.group(2)}';

  }).toLowerCase();

  var folderName = snakeCaseName;
  var archiveName = '$folderName/$snakeCaseName.dart';

  Directory(folderName).createSync(recursive: true);

  var archiveContent = '''
class $className {
  // Adicione seus membros e métodos aqui
}
  ''';

  File(archiveName).writeAsStringSync(archiveContent);

  print('Pasta e arquivo Dart para classe normal criados com sucesso.');
}
