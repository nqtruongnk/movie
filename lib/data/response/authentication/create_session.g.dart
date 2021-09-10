// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_session.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateSession _$CreateSessionFromJson(Map<String, dynamic> json) {
  return CreateSession(
    success: json['success'] as bool,
    session_id: json['session_id'] as String,
  );
}

Map<String, dynamic> _$CreateSessionToJson(CreateSession instance) =>
    <String, dynamic>{
      'success': instance.success,
      'session_id': instance.session_id,
    };
