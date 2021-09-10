import 'package:json_annotation/json_annotation.dart';
import 'package:research_rvp/data/response/search_multi/search_result.dart';
part 'search_multi.g.dart';

@JsonSerializable()
class SearchMultiModel {
  int? page;
  List<Results>? results;
  int? total_pages;
  int? total_results;

  SearchMultiModel();
  factory SearchMultiModel.fromJson(Map<String, dynamic> json) =>
      _$SearchMultiModelFromJson(json);
  Map<String, dynamic> toJson() => _$SearchMultiModelToJson(this);
}
