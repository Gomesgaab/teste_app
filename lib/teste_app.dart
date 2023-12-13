import 'package:teste_app/models/aluno.dart';
import 'package:teste_app/models/console_utils.dart';

void execute() {
  print("Bem vindo ao sistema de notas!");
  String nome = ConsoleUtils.lerStringcomTexto("Digite o nome do aluno:");
  //inseridando dado digitado pelo usúario em variavel aluno.
  //falando que aluno e igual a aluno(nome) in
  var aluno = Aluno(nome);
  double? nota;
  do {
    // nota recebe valor digitado em ler double com texto
    nota = ConsoleUtils.lerDoublecomTexto(
        "Digite a nota do aluno ou S para sair!");
    if (nota != null) {
      aluno.adicionarNotas(nota);
    } else {
      print("As notas digitadas foram ${aluno.getNotas()}");
    }
  } while (nota != null);
}
