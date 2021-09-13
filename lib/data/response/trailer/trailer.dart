import 'package:json_annotation/json_annotation.dart';
import 'package:research_rvp/data/response/trailer/list_trailer.dart';
part 'trailer.g.dart';

@JsonSerializable()
class Trailer {
  int? id;
  List<ResultTrailers>? results;
  Trailer();
  factory Trailer.fromJson(Map<String, dynamic> json) =>
      _$TrailerFromJson(json);
  Map<String, dynamic> toJson() => _$TrailerToJson(this);
}
