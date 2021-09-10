import 'package:json_annotation/json_annotation.dart';
part 'login_body.g.dart';

@JsonSerializable()
class LoginBody {
  late String username;
  late String password;
  late String request_token;
  LoginBody(
      {required this.username,
      required this.password,
      required this.request_token});
  factory LoginBody.fromJson(Map<String, dynamic> json) =>
      _$LoginBodyFromJson(json);
  Map<String, dynamic> toJson() => _$LoginBodyToJson(this);
}

final LoginBody loginBody =
    LoginBody(username: 'aa', password: 'bb', request_token: 'request_token');
