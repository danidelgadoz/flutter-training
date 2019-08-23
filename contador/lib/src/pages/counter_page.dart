import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _CounterPageState();
  }
}

class _CounterPageState extends State<CounterPage> {
  final _textStyle = TextStyle(fontSize: 24);
  int _conteo = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Titulo'),
        centerTitle: true
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Número de clicks:', style: _textStyle),
            Text('$_conteo', style: _textStyle)
          ],
        )
      ),
      floatingActionButton: _creatBotones()
    );
  }

  Widget _creatBotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(width: 30),
        FloatingActionButton( child: Icon(Icons.exposure_zero), onPressed: null),
        Expanded(child: SizedBox()),
        FloatingActionButton( child: Icon(Icons.remove), onPressed: null),
        SizedBox( width: 5.0),
        FloatingActionButton( child: Icon(Icons.add), onPressed: null),
      ],
    );
  }
}