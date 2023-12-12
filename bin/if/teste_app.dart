import 'dart:convert';
import 'dart:io';

void main(List<String> arguments) {
  print("Informe o número a ser calculado: ");
  var line = stdin.readLineSync(encoding: utf8);
  var num1 = double.parse(line ?? "0");

  print("Informe o segundo número a ser calculado: ");
  line = stdin.readLineSync(encoding: utf8);
  var num2 = double.parse(line ?? "0");

  print("Informe a operão: (+, -, *, /):");
  line = stdin.readLineSync(encoding: utf8);
  var operacao = line ?? "";

  double resultado = 0;
  if (operacao == "+") {
    resultado = num1 + num2;
  } else if (operacao == "-") {
    resultado = num1 - num2;
  } else if (operacao == "*") {
    resultado = num1 * num2;
  } else if (operacao == "/") {
    resultado = num1 / num2;
  } else {
    print("Operação invadila");
  }
  print("O resultado da operação é: $resultado");

  /* print("Informe sua nota: ");
  var line = stdin.readLineSync(encoding: utf8);
  var prova = int.parse(line ?? "0");

  print("Informe sua segunda nota: ");
  line = stdin.readLineSync(encoding: utf8);
  var prova1 = int.parse(line ?? "0");

  var media = (prova + prova1) / 2;

  if (media >= 7) {
    print("O aluno passou com a nota: $media");
  } else if (media >= 5) {
    print("O aluno ficou de recuperação com a nota: $media");
  } else {
    print("O aluno reprovol com a nota: $media");
  } */
}
