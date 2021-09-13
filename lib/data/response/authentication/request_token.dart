import 'package:json_annotation/json_annotation.dart';
part 'request_token.g.dart';

@JsonSerializable()
class RequestToken {
  bool success;
  String expires_at;
  String request_token;

  RequestToken(
      {required this.success,
      required this.expires_at,
      required this.request_token});
  factory RequestToken.fromJson(Map<String, dynamic> json) =>
      _$RequestTokenFromJson(json);
  Map<String, dynamic> toJson() => _$RequestTokenToJson(this);
}
