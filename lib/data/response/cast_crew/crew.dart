import 'package:json_annotation/json_annotation.dart';
part 'crew.g.dart';

@JsonSerializable()
class Crew {
  bool? adult;
  int? gender;
  int? id;
  String? known_for_department;
  String? name;
  String? original_name;
  double? popularity;
  String? profile_path;
  String? credit_id;
  String? department;
  String? job;

  Crew();
  factory Crew.fromJson(Map<String, dynamic> json) => _$CrewFromJson(json);
  Map<String, dynamic> toJson() => _$CrewToJson(this);
}
