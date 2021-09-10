// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_knowfor.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

KnownFor _$KnownForFromJson(Map<String, dynamic> json) {
  return KnownFor()
    ..adult = json['adult'] as bool?
    ..poster_path = json['poster_path'] as String?
    ..genre_ids =
        (json['genre_ids'] as List<dynamic>?)?.map((e) => e as int).toList()
    ..id = json['id'] as int?
    ..media_type = json['media_type'] as String?
    ..original_language = json['original_language'] as String?
    ..original_title = json['original_title'] as String?
    ..overview = json['overview'] as String?
    ..backdrop_path = json['backdrop_path'] as String?
    ..release_date = json['release_date'] as String?
    ..title = json['title'] as String?
    ..video = json['video'] as bool?
    ..popularity = json['popularity'] as int?
    ..vote_average = json['vote_average'] as int?
    ..vote_count = json['vote_count'] as int?;
}

Map<String, dynamic> _$KnownForToJson(KnownFor instance) => <String, dynamic>{
      'adult': instance.adult,
      'poster_path': instance.poster_path,
      'genre_ids': instance.genre_ids,
      'id': instance.id,
      'media_type': instance.media_type,
      'original_language': instance.original_language,
      'original_title': instance.original_title,
      'overview': instance.overview,
      'backdrop_path': instance.backdrop_path,
      'release_date': instance.release_date,
      'title': instance.title,
      'video': instance.video,
      'popularity': instance.popularity,
      'vote_average': instance.vote_average,
      'vote_count': instance.vote_count,
    };
