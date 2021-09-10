// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'person_id.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PersonCaster _$PersonCasterFromJson(Map<String, dynamic> json) {
  return PersonCaster()
    ..adult = json['adult'] as bool?
    ..also_known_as = (json['also_known_as'] as List<dynamic>?)
        ?.map((e) => e as String)
        .toList()
    ..biography = json['biography'] as String?
    ..birthday = json['birthday'] as String?
    ..deathday = json['deathday'] as String?
    ..gender = json['gender'] as int?
    ..homepage = json['homepage'] as String?
    ..id = json['id'] as int?
    ..imdb_id = json['imdb_id'] as String?
    ..known_for_department = json['known_for_department'] as String?
    ..name = json['name'] as String?
    ..place_of_birth = json['place_of_birth'] as String?
    ..popularity = (json['popularity'] as num?)?.toDouble()
    ..profile_path = json['profile_path'] as String?;
}

Map<String, dynamic> _$PersonCasterToJson(PersonCaster instance) =>
    <String, dynamic>{
      'adult': instance.adult,
      'also_known_as': instance.also_known_as,
      'biography': instance.biography,
      'birthday': instance.birthday,
      'deathday': instance.deathday,
      'gender': instance.gender,
      'homepage': instance.homepage,
      'id': instance.id,
      'imdb_id': instance.imdb_id,
      'known_for_department': instance.known_for_department,
      'name': instance.name,
      'place_of_birth': instance.place_of_birth,
      'popularity': instance.popularity,
      'profile_path': instance.profile_path,
    };
