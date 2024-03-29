import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final textStyle = TextStyle(fontSize: 24);
  final conteo = 0;

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
            Text('Número de clicks:', style: textStyle),
            Text('$conteo', style: textStyle)
          ],
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('Hola mundo');
          // conteo = conteo + 1;
        },
        child: Icon(Icons.add),
      ),
    );
  }
}