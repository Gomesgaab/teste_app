import 'dart:convert';
import 'dart:io';

class ConsoleUtils {
  // criando metodo para receber valor digitado pelo usúario
  static lerString() {
    return stdin.readLineSync(encoding: utf8) ?? "";
  }

  //passando valor digitado do usúario para variavel texto
  static String lerStringcomTexto(String texto) {
    print(texto);
    return lerString();
  }

  /* static double? sair(String textS) {
    textS = "S";
    if (lerDouble() == textS) {
      exit(0);
    } else {
      return lerDouble();
    }
  }
 */
  static double? lerDouble() {
    //dando o valor digitado a variavel (value)
    var value = lerString();
    var sair = "S";
    try {
      //assim que digitado tentara converter o valor passado em value para double
      return double.parse(value);
    } catch (e) {
      if (value == sair) {
        exit(0);
      } else {
        // se não conseguir retornara null/nulo
        print("Digite (S) para sair ou a nota do aluno");
        return lerDouble();
      }
    }
  }

  static double? lerDoublecomTexto(String texto) {
    print(texto);
    return lerDouble();
  }
}
