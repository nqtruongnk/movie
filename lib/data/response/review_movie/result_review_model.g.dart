// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'result_review_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResultReview _$ResultReviewFromJson(Map<String, dynamic> json) {
  return ResultReview()
    ..author = json['author'] as String?
    ..content = json['content'] as String?
    ..created_at = json['created_at'] as String?
    ..id = json['id'] as String?
    ..updated_at = json['updated_at'] as String?
    ..url = json['url'] as String?
    ..author_details = json['author_details'] == null
        ? null
        : AuthorDetail.fromJson(json['author_details'] as Map<String, dynamic>);
}

Map<String, dynamic> _$ResultReviewToJson(ResultReview instance) =>
    <String, dynamic>{
      'author': instance.author,
      'content': instance.content,
      'created_at': instance.created_at,
      'id': instance.id,
      'updated_at': instance.updated_at,
      'url': instance.url,
      'author_details': instance.author_details,
    };
