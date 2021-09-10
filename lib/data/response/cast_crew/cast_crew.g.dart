// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cast_crew.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CastCrew _$CastCrewFromJson(Map<String, dynamic> json) {
  return CastCrew()
    ..id = json['id'] as int?
    ..cast = (json['cast'] as List<dynamic>?)
        ?.map((e) => Cast.fromJson(e as Map<String, dynamic>))
        .toList()
    ..crew = (json['crew'] as List<dynamic>?)
        ?.map((e) => Crew.fromJson(e as Map<String, dynamic>))
        .toList();
}

Map<String, dynamic> _$CastCrewToJson(CastCrew instance) => <String, dynamic>{
      'id': instance.id,
      'cast': instance.cast,
      'crew': instance.crew,
    };
