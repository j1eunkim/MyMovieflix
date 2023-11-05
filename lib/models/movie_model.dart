class MovieModel {
  final String title, poster, id;

  MovieModel.fromJson(Map<String, dynamic> json)
      : title = json['original_title'].toString(),
        poster = json['poster_path'].toString(),
        id = json['id'].toString();
}
