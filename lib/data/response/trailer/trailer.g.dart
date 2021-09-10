// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trailer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Trailer _$TrailerFromJson(Map<String, dynamic> json) {
  return Trailer()
    ..id = json['id'] as int?
    ..results = (json['results'] as List<dynamic>?)
        ?.map((e) => ResultTrailers.fromJson(e as Map<String, dynamic>))
        .toList();
}

Map<String, dynamic> _$TrailerToJson(Trailer instance) => <String, dynamic>{
      'id': instance.id,
      'results': instance.results,
    };
