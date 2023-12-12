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

  switch (operacao) {
    case "+":
      resultado = num1 + num2;
      break;
    case "-":
      resultado = num1 - num2;
      break;
    case "*":
      resultado = num1 * num2;
      break;
    case "/":
      resultado = num1 / num2;
      break;
    default:
      print("Operação invadila");
      exit(0);
  }
  print("O resultado da operação é: $resultado");
}
