import 'package:json_annotation/json_annotation.dart';
part 'search_knowfor.g.dart';

@JsonSerializable()
class KnownFor {
  bool? adult;
  String? poster_path;
  List<int>? genre_ids;
  int? id;
  String? media_type;
  String? original_language;
  String? original_title;
  String? overview;
  String? backdrop_path;
  String? release_date;
  String? title;
  bool? video;
  int? popularity;
  int? vote_average;
  int? vote_count;
  KnownFor();
  factory KnownFor.fromJson(Map<String, dynamic> json) =>
      _$KnownForFromJson(json);
  Map<String, dynamic> toJson() => _$KnownForToJson(this);
}
