class MovieModel {
  final String title, thumb, id;

  MovieModel.fromJson(Map<String, dynamic> json)
      : title = json['original_title'].toString(),
        thumb = json['backdrop_path'].toString(),
        id = json['id'].toString();
}
