// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_trailer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResultTrailers _$ResultTrailersFromJson(Map<String, dynamic> json) {
  return ResultTrailers(
    json['id'] as String,
    json['iso_3166_1'] as String,
    json['iso_639_1'] as String,
    json['key'] as String,
    json['name'] as String?,
    json['site'] as String,
    json['size'] as int,
    json['type'] as String,
  );
}

Map<String, dynamic> _$ResultTrailersToJson(ResultTrailers instance) =>
    <String, dynamic>{
      'id': instance.id,
      'iso_639_1': instance.iso_639_1,
      'iso_3166_1': instance.iso_3166_1,
      'key': instance.key,
      'name': instance.name,
      'site': instance.site,
      'size': instance.size,
      'type': instance.type,
    };
