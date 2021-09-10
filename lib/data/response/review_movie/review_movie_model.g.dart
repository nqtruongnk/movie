// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_movie_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReviewMovieModel _$ReviewMovieModelFromJson(Map<String, dynamic> json) {
  return ReviewMovieModel()
    ..id = json['id'] as int?
    ..page = json['page'] as int?
    ..results = (json['results'] as List<dynamic>?)
        ?.map((e) => ResultReview.fromJson(e as Map<String, dynamic>))
        .toList()
    ..total_pages = json['total_pages'] as int?
    ..total_results = json['total_results'] as int?;
}

Map<String, dynamic> _$ReviewMovieModelToJson(ReviewMovieModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'page': instance.page,
      'results': instance.results,
      'total_pages': instance.total_pages,
      'total_results': instance.total_results,
    };
