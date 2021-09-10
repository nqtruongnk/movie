import 'package:json_annotation/json_annotation.dart';
part 'result_search_key.g.dart';

@JsonSerializable()
class ResultSearchKey {
  String? name;
  int? id;
  ResultSearchKey();
  factory ResultSearchKey.fromJson(Map<String, dynamic> json) =>
      _$ResultSearchKeyFromJson(json);
  Map<String, dynamic> toJson() => _$ResultSearchKeyToJson(this);
}
