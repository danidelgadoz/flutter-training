import 'package:flutter/material.dart';

import 'package:components/src/providers/menu_provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes'),
      ),
      body: _lista(),
    );
  }

  Widget _lista() {
    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        return ListView(
          children: _listaItems(snapshot.data),
        );
      },
    );
  }

  List<Widget> _listaItems(List<dynamic> data) {
    final List<Widget> opciones = [];

    data.forEach((item) {
      final widgetTemp = ListTile(
        title: Text(item['texto']),
        leading: Icon(Icons.assignment_turned_in, color: Colors.blue),
        trailing: Icon(Icons.keyboard_arrow_right, color: Colors.blue),
      );

      opciones..add(widgetTemp)
              ..add(Divider());
    });

    return opciones;
  }
}