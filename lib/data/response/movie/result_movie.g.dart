// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'result_movie.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListMovieResults _$ListMovieResultsFromJson(Map<String, dynamic> json) {
  return ListMovieResults(
    poster_path: json['poster_path'] as String?,
    adult: json['adult'] as bool?,
    overview: json['overview'] as String?,
    release_date: json['release_date'] as String?,
    genre_ids:
        (json['genre_ids'] as List<dynamic>?)?.map((e) => e as int).toList(),
    id: json['id'] as int,
    original_title: json['original_title'] as String?,
    original_language: json['original_language'] as String?,
    title: json['title'] as String?,
    backdrop_path: json['backdrop_path'] as String?,
    popularity: (json['popularity'] as num?)?.toDouble(),
    vote_count: json['vote_count'] as int?,
    video: json['video'] as bool?,
    vote_average: (json['vote_average'] as num?)?.toDouble(),
  );
}

Map<String, dynamic> _$ListMovieResultsToJson(ListMovieResults instance) =>
    <String, dynamic>{
      'poster_path': instance.poster_path,
      'adult': instance.adult,
      'overview': instance.overview,
      'release_date': instance.release_date,
      'genre_ids': instance.genre_ids,
      'id': instance.id,
      'original_title': instance.original_title,
      'original_language': instance.original_language,
      'title': instance.title,
      'backdrop_path': instance.backdrop_path,
      'popularity': instance.popularity,
      'vote_count': instance.vote_count,
      'video': instance.video,
      'vote_average': instance.vote_average,
    };
