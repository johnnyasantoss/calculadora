import 'package:flutter/material.dart';

import 'calculadora_widget.dart';

void main() {
  runApp(MaterialApp(
    title: "Calculadora",
    home: Scaffold(
      appBar: AppBar(
        title: Text("Calculadora"),
      ),
      body: CalculadoraWidget(),
    ),
  ));
}
