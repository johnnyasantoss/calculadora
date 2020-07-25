import 'package:calculadora/teclado_calculadora.dart';
import 'package:flutter/material.dart';

class CalculadoraWidget extends StatefulWidget {
  @override
  _CalculadoraWidgetState createState() => _CalculadoraWidgetState();
}

class _CalculadoraWidgetState extends State<CalculadoraWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(children: <Widget>[
      Text("Caixa de saída"),
      TecladoCalculadora(
        onValor: (valor) {
          print('Recebido o valor $valor no CalculadoraWidget');
        },
      )
    ]));
  }
}

// <resultado>

// 7 8 9 /
// 6 5 4 *
// 3 2 1 -
// 0 , = +
