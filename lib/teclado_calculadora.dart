import 'package:flutter/material.dart';

typedef EventoValor = void Function(String valor);

class TecladoCalculadora extends StatelessWidget {
  EventoValor onValor;

  TecladoCalculadora({@required this.onValor});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.green[100]),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              RaisedButton(
                child: Text("7"),
                onPressed: () => onValor("7"),
              ),
              RaisedButton(
                child: Text("8"),
                onPressed: null,
              ),
              RaisedButton(
                child: Text("9"),
                onPressed: null,
              ),
              RaisedButton(
                child: Text("/"),
                onPressed: null,
              )
            ],
          ),
          Row(
            children: <Widget>[
              RaisedButton(
                child: Text("6"),
                onPressed: null,
              ),
              RaisedButton(
                child: Text("5"),
                onPressed: null,
              ),
              RaisedButton(
                child: Text("4"),
                onPressed: null,
              ),
              RaisedButton(
                child: Text("*"),
                onPressed: null,
              )
            ],
          ),
          Row(
            children: <Widget>[
              RaisedButton(
                child: Text("3"),
                onPressed: null,
              ),
              RaisedButton(
                child: Text("2"),
                onPressed: null,
              ),
              RaisedButton(
                child: Text("1"),
                onPressed: null,
              ),
              RaisedButton(
                child: Text("+"),
                onPressed: null,
              )
            ],
          ),
          Row(
            children: <Widget>[
              RaisedButton(
                child: Text("0"),
                onPressed: null,
              ),
              RaisedButton(
                child: Text(","),
                onPressed: null,
              ),
              RaisedButton(
                child: Text("="),
                onPressed: null,
              ),
              RaisedButton(
                child: Text("-"),
                onPressed: null,
              )
            ],
          ),
        ],
      ),
    );
  }
}
