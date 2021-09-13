import 'package:json_annotation/json_annotation.dart';
part 'person_id.g.dart';

@JsonSerializable()
class PersonCaster {
  bool? adult;
  List<String>? also_known_as;
  String? biography;
  String? birthday;
  String? deathday;
  int? gender;
  String? homepage;
  int? id;
  String? imdb_id;
  String? known_for_department;
  String? name;
  String? place_of_birth;
  double? popularity;
  String? profile_path;
  PersonCaster();

  factory PersonCaster.fromJson(Map<String, dynamic> json) =>
      _$PersonCasterFromJson(json);
  Map<String, dynamic> toJson() => _$PersonCasterToJson(this);
}
