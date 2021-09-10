import 'package:json_annotation/json_annotation.dart';
import 'package:research_rvp/data/response/search_multi/search_knowfor.dart';
part 'search_result.g.dart';

@JsonSerializable()
class Results {
  String? backdrop_path;
  String? first_air_date;
  List<int>? genre_ids;
  int? id;
  String? media_type;
  String? name;
  List<String>? origin_country;
  String? original_language;
  String? original_name;
  String? overview;
  List<KnownFor>? known_for;
  String? poster_path;
  double? vote_average;
  int? vote_count;
  bool? adult;
  String? original_title;
  String? release_date;
  String? title;
  bool? video;
  int? gender;
  double? popularity;
  String? known_for_department;
  String? profile_path;
  Results();

  factory Results.fromJson(Map<String, dynamic> json) =>
      _$ResultsFromJson(json);
  Map<String, dynamic> toJson() => _$ResultsToJson(this);
}
