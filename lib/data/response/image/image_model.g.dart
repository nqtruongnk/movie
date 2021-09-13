// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ImageModel _$ImageModelFromJson(Map<String, dynamic> json) {
  return ImageModel()
    ..id = json['id'] as int?
    ..backdrops = (json['backdrops'] as List<dynamic>?)
        ?.map((e) => BackdropModel.fromJson(e as Map<String, dynamic>))
        .toList()
    ..posters = (json['posters'] as List<dynamic>?)
        ?.map((e) => BackdropModel.fromJson(e as Map<String, dynamic>))
        .toList();
}

Map<String, dynamic> _$ImageModelToJson(ImageModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'backdrops': instance.backdrops,
      'posters': instance.posters,
    };
