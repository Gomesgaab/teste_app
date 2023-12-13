class Aluno {
  String _nome = "";
  final List<double> _notas = [];

  Aluno(String nome) {
    _nome = nome;
  }

  void setNome(String nome) {
    _nome = nome;
  }

  String getNome() {
    return _nome;
  }

  void adicionarNotas(double notas) {
    _notas.add(notas);
  }

  List<double> getNotas() {
    return _notas;
  }
}
