import 'dart:convert';
import 'dart:io';

void main(List<String> arguments) {
  /* var listanomes = ["ola", "gab", "dom", "da"];
  for (var i = 0; i <= listanomes.length - 1; i++) {
    print(listanomes[i]);
  } */

  /* var texto = ["olagabomda"];
  for (var i = 0; i <= texto.length - 1; i++) {
    print(texto[i]);
  } */

  var resultados = 0;
  var quantidade = 0;
  print("Informe a quantidade de números:");
  var line = stdin.readLineSync(encoding: utf8);
  quantidade = int.parse(line ?? "0");
  for (var i = 0; i < quantidade; i++) {
    print("Informe o número:");
    line = stdin.readLineSync(encoding: utf8);
    var numero = int.parse(line ?? "0");
    resultados = resultados + numero;
    print("$i - $resultados");
  }

  /* for (var i = 0; i <= 100; i++) {
    print(i);
  } */
  /* for (var i = 1; i <= 100; i++) {
    resultados = resultados + i;
    print("$i - $resultados");
  } */
  /*   print(resultados);*/
}
