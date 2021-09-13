import 'package:json_annotation/json_annotation.dart';
part 'backdrop_model.g.dart';

@JsonSerializable()
class BackdropModel {
  double? aspect_ratio;
  int? height;
  String? file_path;
  String? iso_639_1;
  double? vote_average;
  int? vote_count;
  int? width;

  BackdropModel();
  factory BackdropModel.fromJson(Map<String, dynamic> json) =>
      _$BackdropModelFromJson(json);
  Map<String, dynamic> toJson() => _$BackdropModelToJson(this);
}
