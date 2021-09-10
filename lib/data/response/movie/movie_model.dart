import 'package:json_annotation/json_annotation.dart';
import 'package:research_rvp/data/response/movie/result_movie.dart';
part 'movie_model.g.dart';

@JsonSerializable()
class MovieModel {
  int page;
  List<ListMovieResults> results;
  Map<String, dynamic>? dates;
  int total_pages;
  int total_results;

  MovieModel(
      {required this.page,
      required this.results,
      required this.dates,
      required this.total_pages,
      required this.total_results});

  factory MovieModel.fromJson(Map<String, dynamic> json) =>
      _$MovieModelFromJson(json);
  Map<String, dynamic> toJson() => _$MovieModelToJson(this);
}
