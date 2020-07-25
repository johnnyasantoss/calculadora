import 'package:flutter/material.dart';

class BotaoTeclado extends StatelessWidget {
  String valor;

  VoidCallback onPressed;

  BotaoTeclado({this.valor, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text("7"),
      onPressed: () => this.onPressed("7"),
    );
  }
}
