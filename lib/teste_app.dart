import 'package:teste_app/exeptions/nome_invalido.dart';
import 'package:teste_app/models/aluno.dart';
import 'package:teste_app/models/console_utils.dart';

void execute() {
  print("Bem vindo ao sistema de notas!");
  String nome = ConsoleUtils.lerStringcomTexto("Digite o nome do aluno:");
  try {
    if (nome.trim() == "") {
      throw nomeInvalido();
    }
  } catch (e) {
    nome;
  }

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
    }
  } while (nota != null);
  print("As notas digitadas foram: ${aluno.getNotas()}");
  if (aluno.aprovado(7)) {
    print(
        "O aluno: ${aluno.getNome()} foi aprovado com a nota ${aluno.retornaMedia()}");
  } else {
    print(
        "O aluno: ${aluno.getNome()} foi reprovado com a nota ${aluno.retornaMedia()}");
  }
}
