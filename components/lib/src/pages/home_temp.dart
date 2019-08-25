import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final opciones = ['Uno', 'Dos', 'Tres', 'Cuatro', 'Cinco'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Components Temp'),
      ),
      body: ListView(
        children: _crearItemsCorta()
        // children: _crearItems()
      ),
    );
  }

  List<Widget> _crearItems() {
    List<Widget> lista = new List<Widget>();

    for (String opt in opciones) {
      final tempWigget = ListTile(
        title: Text(opt),
      );

      lista..add(tempWigget)
           ..add(Divider());
    }

    return lista;
  }

  List<Widget> _crearItemsCorta() {
    return opciones.map((opcion) {
      return Column(
        children: <Widget>[
          ListTile(
            title: Text(opcion),
            subtitle: Text('Cualquier cosa'),
            leading: Icon(Icons.account_balance_wallet),
            trailing: Icon(Icons.arrow_right),
            onTap: () {},
          ),
          Divider()
        ],
      );
    }).toList();
  }
}