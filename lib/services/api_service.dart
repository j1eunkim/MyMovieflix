import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:mymovieflix/models/movie_model.dart';

class ApiService {
  static const String baseUrl = "https://movies-api.nomadcoders.workers.dev";
  static const String popular = "popular";

  static Future<List<MovieModel>> getPoularMovies() async {
    List<MovieModel> movieInstance = [];
    final url = Uri.parse('$baseUrl/$popular');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final List<dynamic>movies = jsonDecode(response.body)['results'];
      for (var movie in movies) {
        movieInstance.add(MovieModel.fromJson(movie));
      }
      return movieInstance;
    }
    throw Error();
  }
}
