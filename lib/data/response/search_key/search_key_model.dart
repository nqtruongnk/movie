import 'package:json_annotation/json_annotation.dart';
import 'package:research_rvp/data/response/search_key/result_search_key.dart';
part 'search_key_model.g.dart';

@JsonSerializable()
class SearchKeyModel {
  int? page;
  List<ResultSearchKey>? results;
  int? total_pages;
  int? total_results;
  SearchKeyModel();
  factory SearchKeyModel.fromJson(Map<String, dynamic> json) =>
      _$SearchKeyModelFromJson(json);
  Map<String, dynamic> toJson() => _$SearchKeyModelToJson(this);
}
