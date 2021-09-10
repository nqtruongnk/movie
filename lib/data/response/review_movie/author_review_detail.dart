import 'package:json_annotation/json_annotation.dart';
part 'author_review_detail.g.dart';

@JsonSerializable()
class AuthorDetail {
  String? name;
  String? username;
  String? avatar_path;
  double? rating;
  AuthorDetail();
  factory AuthorDetail.fromJson(Map<String, dynamic> json) =>
      _$AuthorDetailFromJson(json);
  Map<String, dynamic> toJson() => _$AuthorDetailToJson(this);
}
