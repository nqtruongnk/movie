// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'backdrop_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BackdropModel _$BackdropModelFromJson(Map<String, dynamic> json) {
  return BackdropModel()
    ..aspect_ratio = (json['aspect_ratio'] as num?)?.toDouble()
    ..height = json['height'] as int?
    ..file_path = json['file_path'] as String?
    ..iso_639_1 = json['iso_639_1'] as String?
    ..vote_average = (json['vote_average'] as num?)?.toDouble()
    ..vote_count = json['vote_count'] as int?
    ..width = json['width'] as int?;
}

Map<String, dynamic> _$BackdropModelToJson(BackdropModel instance) =>
    <String, dynamic>{
      'aspect_ratio': instance.aspect_ratio,
      'height': instance.height,
      'file_path': instance.file_path,
      'iso_639_1': instance.iso_639_1,
      'vote_average': instance.vote_average,
      'vote_count': instance.vote_count,
      'width': instance.width,
    };
