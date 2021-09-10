// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Results _$ResultsFromJson(Map<String, dynamic> json) {
  return Results()
    ..backdrop_path = json['backdrop_path'] as String?
    ..first_air_date = json['first_air_date'] as String?
    ..genre_ids =
        (json['genre_ids'] as List<dynamic>?)?.map((e) => e as int).toList()
    ..id = json['id'] as int?
    ..media_type = json['media_type'] as String?
    ..name = json['name'] as String?
    ..origin_country = (json['origin_country'] as List<dynamic>?)
        ?.map((e) => e as String)
        .toList()
    ..original_language = json['original_language'] as String?
    ..original_name = json['original_name'] as String?
    ..overview = json['overview'] as String?
    ..known_for = (json['known_for'] as List<dynamic>?)
        ?.map((e) => KnownFor.fromJson(e as Map<String, dynamic>))
        .toList()
    ..poster_path = json['poster_path'] as String?
    ..vote_average = (json['vote_average'] as num?)?.toDouble()
    ..vote_count = json['vote_count'] as int?
    ..adult = json['adult'] as bool?
    ..original_title = json['original_title'] as String?
    ..release_date = json['release_date'] as String?
    ..title = json['title'] as String?
    ..video = json['video'] as bool?
    ..gender = json['gender'] as int?
    ..popularity = (json['popularity'] as num?)?.toDouble()
    ..known_for_department = json['known_for_department'] as String?
    ..profile_path = json['profile_path'] as String?;
}

Map<String, dynamic> _$ResultsToJson(Results instance) => <String, dynamic>{
      'backdrop_path': instance.backdrop_path,
      'first_air_date': instance.first_air_date,
      'genre_ids': instance.genre_ids,
      'id': instance.id,
      'media_type': instance.media_type,
      'name': instance.name,
      'origin_country': instance.origin_country,
      'original_language': instance.original_language,
      'original_name': instance.original_name,
      'overview': instance.overview,
      'known_for': instance.known_for,
      'poster_path': instance.poster_path,
      'vote_average': instance.vote_average,
      'vote_count': instance.vote_count,
      'adult': instance.adult,
      'original_title': instance.original_title,
      'release_date': instance.release_date,
      'title': instance.title,
      'video': instance.video,
      'gender': instance.gender,
      'popularity': instance.popularity,
      'known_for_department': instance.known_for_department,
      'profile_path': instance.profile_path,
    };
