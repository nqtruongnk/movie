// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_key_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchKeyModel _$SearchKeyModelFromJson(Map<String, dynamic> json) {
  return SearchKeyModel()
    ..page = json['page'] as int?
    ..results = (json['results'] as List<dynamic>?)
        ?.map((e) => ResultSearchKey.fromJson(e as Map<String, dynamic>))
        .toList()
    ..total_pages = json['total_pages'] as int?
    ..total_results = json['total_results'] as int?;
}

Map<String, dynamic> _$SearchKeyModelToJson(SearchKeyModel instance) =>
    <String, dynamic>{
      'page': instance.page,
      'results': instance.results,
      'total_pages': instance.total_pages,
      'total_results': instance.total_results,
    };
