import 'package:json_annotation/json_annotation.dart';
part 'list_trailer.g.dart';

@JsonSerializable()
class ResultTrailers {
  String id;
  String iso_639_1;
  String iso_3166_1;
  String key;
  String? name;
  String site;
  int size;
  String type;
  ResultTrailers(
    this.id,
    this.iso_3166_1,
    this.iso_639_1,
    this.key,
    this.name,
    this.site,
    this.size,
    this.type,
  );
  factory ResultTrailers.fromJson(Map<String, dynamic> json) =>
      _$ResultTrailersFromJson(json);
  Map<String, dynamic> toJson() => _$ResultTrailersToJson(this);
}
