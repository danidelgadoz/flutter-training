import 'package:flutter/services.dart' show rootBundle;

class _MenuProvider {

  List<dynamic> opciones = [];

  _MenuProvider() {
    _cargarData();
  }

  void _cargarData() {
    rootBundle.loadString('data/menu_opts.json')
      .then( (data) {
        print(data);
      });
  }
}

final menuProvider = new _MenuProvider();