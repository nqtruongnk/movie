import 'package:json_annotation/json_annotation.dart';
part 'create_session.g.dart';

@JsonSerializable()
class CreateSession {
  bool success;
  String session_id;
  CreateSession({required this.success, required this.session_id});
  factory CreateSession.fromJson(Map<String, dynamic> json) =>
      _$CreateSessionFromJson(json);
  Map<String, dynamic> toJson() => _$CreateSessionToJson(this);
}
