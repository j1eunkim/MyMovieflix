class MovieModel {
  final String title, poster, id, overview;

  final double vote;

  MovieModel.fromJson(Map<String, dynamic> json)
      : title = json['original_title'].toString(),
        poster = json['poster_path'].toString(),
        id = json['id'].toString(),
        overview = json['overview'].toString(),
        vote = double.parse(json['vote_average'].toString());
}
