import 'package:teste_app/teste_app.dart' as teste_app;
import 'dart:convert';
import 'dart:io';

void main(List<String> arguments) {
  /* print('Hello world: ${teste_app.calculate()}!'); */
  print("Informe sua nota: ");
  var line = stdin.readLineSync(encoding: utf8);
  var prova = int.parse(line == null ? "0" : line);

  print("Informe sua segunda nota: ");
  line = stdin.readLineSync(encoding: utf8);
  var prova1 = int.parse(line == null ? "0" : line);

  var media = (prova + prova1) / 2;

  if (media >= 7) {
    print("O aluno passou com a nota: $media");
  } else if (media >= 5) {
    print("O aluno ficou de recuperação com a nota: $media");
  } else {
    print("O aluno reprovol com a nota: $media");
  }

  /*   print('ola tudo bem como estpa você?'.length);

  List<int> listint = [10, 5, 6];
  var lis = [10, 'olá', 11];
  List lsDynamic = [1, 9, 'ola'];
  List lsV = [];

  print(lsDynamic);
  print(lis.length);
  print(listint);

  lis.add("ola tudo bem?");
  print(lis);

  lis.remove("olá");

  print(lis);

  print(lsV.isEmpty);
  print(lsV.isNotEmpty); */

  /*print(media);
  print(media >= 7);
  print(media < 7);
  print(prova == prova1);
  print(prova != prova1);
  print((prova >= 7) && (prova1 >= 7)); */
}
