class nomeInvalido implements Exception {
  String erro() => "Erro, espaço invalido";

  @override
  String toString() {
    return "nomeInvalido: ${erro()}";
  }
}
