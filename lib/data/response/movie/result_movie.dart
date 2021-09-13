import 'package:json_annotation/json_annotation.dart';
part 'result_movie.g.dart';

@JsonSerializable()
class ListMovieResults {
  String? poster_path;
  bool? adult;
  String? overview;
  String? release_date;
  late List<int>? genre_ids;
  int id;
  String? original_title;
  String? original_language;
  String? title;
  String? backdrop_path;
  double? popularity;
  int? vote_count;
  bool? video;
  double? vote_average;

  ListMovieResults({
    this.poster_path,
    required this.adult,
    required this.overview,
    required this.release_date,
    required this.genre_ids,
    required this.id,
    required this.original_title,
    required this.original_language,
    required this.title,
    this.backdrop_path,
    required this.popularity,
    required this.vote_count,
    required this.video,
    required this.vote_average,
  });

  factory ListMovieResults.fromJson(Map<String, dynamic> json) =>
      _$ListMovieResultsFromJson(json);
  Map<String, dynamic> toJson() => _$ListMovieResultsToJson(this);
}
