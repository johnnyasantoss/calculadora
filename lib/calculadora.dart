void main2(List<String> args) {
  var operacao = analisarArgumentos(args);

  if (operacao == null) {
    // se n der certo, sai do programa
    return;
  }

  //se der certo, continua

  var minhaCalculadora = new Calculadora();

  var resultado = minhaCalculadora.executar(operacao);

  print(resultado);
}

Operacao analisarArgumentos(List<String> args) {
  //  0  1  2
  // [3, +, 3] => length == 3
  if (args.length == 3) {
    // "3" => String
    // 3   => int
    var n1 = double.parse(args[0]);
    var modo = analisarModoOperacao(args[1]);
    var n2 = double.parse(args[2]);
    var operacao = new Operacao(n1, n2, modo);

    return operacao;
  }

  print('Uso: dart calculadora.dart <arg1> <arg2> <arg3>');
  print('É obrigatório passar três argumentos.');
  return null;
}

ModoOperacao analisarModoOperacao(String entrada) {
  switch (entrada.toLowerCase()) {
    case "soma":
    case "+":
      return ModoOperacao.Soma;
    case "subtracao":
    case "-":
      return ModoOperacao.Subtracao;
    case "divisao":
    case "/":
      return ModoOperacao.Divisao;
    case "multiplicacao":
    case "*":
    case "x":
    case ".":
      return ModoOperacao.Multiplicacao;
    default:
      throw new ArgumentError(
          "Modo de operação inválido: $entrada, validos: ${ModoOperacao.values}");
  }
}

// classe: é como uma planta baixa (ensina como criar algo), receita
// objeto: é o resultado da construcao de uma classe

class Calculadora {
  // esse é o construtor: que é um método especial (por isso leva o nome da classe)
  Calculadora();

  double executar(Operacao operacao) {
    switch (operacao.modo) {
      case ModoOperacao.Divisao:
        return operacao.n1 / operacao.n2;
      case ModoOperacao.Multiplicacao:
        return operacao.n1 * operacao.n2;
      case ModoOperacao.Soma:
        return operacao.n1 + operacao.n2;
      case ModoOperacao.Subtracao:
        return operacao.n1 - operacao.n2;
      default:
        throw new ArgumentError("Modo de operação inválido: ${operacao.modo}");
    }
  }
}

class Operacao {
  double n1;
  double n2;
  ModoOperacao modo;

  Operacao(this.n1, this.n2, this.modo);
}

enum ModoOperacao { Soma, Divisao, Multiplicacao, Subtracao }
