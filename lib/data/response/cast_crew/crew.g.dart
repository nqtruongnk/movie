// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'crew.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Crew _$CrewFromJson(Map<String, dynamic> json) {
  return Crew()
    ..adult = json['adult'] as bool?
    ..gender = json['gender'] as int?
    ..id = json['id'] as int?
    ..known_for_department = json['known_for_department'] as String?
    ..name = json['name'] as String?
    ..original_name = json['original_name'] as String?
    ..popularity = (json['popularity'] as num?)?.toDouble()
    ..profile_path = json['profile_path'] as String?
    ..credit_id = json['credit_id'] as String?
    ..department = json['department'] as String?
    ..job = json['job'] as String?;
}

Map<String, dynamic> _$CrewToJson(Crew instance) => <String, dynamic>{
      'adult': instance.adult,
      'gender': instance.gender,
      'id': instance.id,
      'known_for_department': instance.known_for_department,
      'name': instance.name,
      'original_name': instance.original_name,
      'popularity': instance.popularity,
      'profile_path': instance.profile_path,
      'credit_id': instance.credit_id,
      'department': instance.department,
      'job': instance.job,
    };
