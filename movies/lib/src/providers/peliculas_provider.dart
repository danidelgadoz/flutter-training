import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:movies/src/models/peliculas_model.dart';

class PeliculasProvider {
  String _apiKey   = '3661411c65331184ac73d8660d0b4648';
  String _url      = 'api.themoviedb.org';
  String _language = 'es-ES';

  Future<List<Pelicula>> _procesarRespuesta(url) async {
    final res = await http.get(url);
    final decodedData = json.decode(res.body);
    final peliculas = new Peliculas.fromJsonList(decodedData['results']);

    return peliculas.items;
  }

  Future<List<Pelicula>> getEnCines() async {
    final url = Uri.https(_url, '3/movie/now_playing', {
      'api_key': _apiKey,
      'language': _language,
    });

    return _procesarRespuesta(url);
  }

  Future<List<Pelicula>> getPopulares() async {
    final url = Uri.https(_url, '3/movie/popular', {
      'api_key': _apiKey,
      'language': _language,
    });

    return _procesarRespuesta(url);
  }

}