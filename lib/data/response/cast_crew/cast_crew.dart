import 'package:json_annotation/json_annotation.dart';
import 'package:research_rvp/data/response/cast_crew/cast.dart';
import 'package:research_rvp/data/response/cast_crew/crew.dart';
part 'cast_crew.g.dart';

@JsonSerializable()
class CastCrew {
  int? id;
  List<Cast>? cast;
  List<Crew>? crew;

  CastCrew();
  factory CastCrew.fromJson(Map<String, dynamic> json) =>
      _$CastCrewFromJson(json);
  Map<String, dynamic> toJson() => _$CastCrewToJson(this);
}
