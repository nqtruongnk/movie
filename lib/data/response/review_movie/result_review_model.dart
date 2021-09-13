import 'package:json_annotation/json_annotation.dart';
import 'package:research_rvp/data/response/review_movie/author_review_detail.dart';
part 'result_review_model.g.dart';

@JsonSerializable()
class ResultReview {
  String? author;
  String? content;
  String? created_at;
  String? id;
  String? updated_at;
  String? url;
  AuthorDetail? author_details;
  ResultReview();
  factory ResultReview.fromJson(Map<String, dynamic> json) =>
      _$ResultReviewFromJson(json);
  Map<String, dynamic> toJson() => _$ResultReviewToJson(this);
}
