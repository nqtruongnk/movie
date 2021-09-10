import 'package:research_rvp/data/response/search_multi/search_multi.dart';
import 'package:teq_flutter_core/teq_flutter_core.dart';

class SearchStateFilter extends BaseState {
  final bool isLoading;
  final SearchMultiModel? searchMultiModel;
  SearchStateFilter({this.isLoading = false, this.searchMultiModel});

  @override
  List<Object> get props => [isLoading, searchMultiModel ?? ''];

  @override
  String toString() => 'SearchFilter: $isLoading, $searchMultiModel';

  SearchStateFilter copyWith(
          {bool? isLoading, SearchMultiModel? searchMultiModel}) =>
      SearchStateFilter(
        isLoading: isLoading ?? this.isLoading,
        searchMultiModel: searchMultiModel ?? this.searchMultiModel,
      );
}
