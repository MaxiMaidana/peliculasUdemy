import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:peliculas/src/pages/models/pelicula_model.dart';

class PeliculaProvider{

  String _apikey = '5237f59707ce8c14669213e6f757b862';
  String _url = 'api.themoviedb.org';
  String _language = 'es_ES';

  Future<List<Pelicula>>getEnCines() async{

    final url = Uri.https(_url, '3/movie/now_playing', {
      'api_key'  : _apikey,
      'language' : _language,
    });

    final resp = await http.get(url);
    final decodedData = json.decode(resp.body);
    final peliculas = new Peliculas.fromJsonList(decodedData['results']);

    return peliculas.items;


  }

}