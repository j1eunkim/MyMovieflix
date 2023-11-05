class WebtoonDetailModel {
  final String title, adult, genre, overview;

  WebtoonDetailModel.fromJson(Map<String, dynamic> json)
      : title = json['original_title'],
        adult = json['adult'],
        genre = json['genre_id'],
        overview = json['overview'];
}
