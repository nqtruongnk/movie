// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'author_review_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthorDetail _$AuthorDetailFromJson(Map<String, dynamic> json) {
  return AuthorDetail()
    ..name = json['name'] as String?
    ..username = json['username'] as String?
    ..avatar_path = json['avatar_path'] as String?
    ..rating = (json['rating'] as num?)?.toDouble();
}

Map<String, dynamic> _$AuthorDetailToJson(AuthorDetail instance) =>
    <String, dynamic>{
      'name': instance.name,
      'username': instance.username,
      'avatar_path': instance.avatar_path,
      'rating': instance.rating,
    };
