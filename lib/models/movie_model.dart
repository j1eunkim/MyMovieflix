class MovieModel {
  final String title, thumb, id;

  MovieModel.fromJson(Map<String, dynamic> json)
      : title = json['original_title'],
        thumb = json['backdrop_path'],
        id = json['id'];
}
