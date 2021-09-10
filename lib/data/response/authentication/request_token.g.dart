// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_token.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RequestToken _$RequestTokenFromJson(Map<String, dynamic> json) {
  return RequestToken(
    success: json['success'] as bool,
    expires_at: json['expires_at'] as String,
    request_token: json['request_token'] as String,
  );
}

Map<String, dynamic> _$RequestTokenToJson(RequestToken instance) =>
    <String, dynamic>{
      'success': instance.success,
      'expires_at': instance.expires_at,
      'request_token': instance.request_token,
    };
