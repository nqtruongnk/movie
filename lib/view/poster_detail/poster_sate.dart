import 'package:research_rvp/data/response/image/image_model.dart';

import 'package:teq_flutter_core/teq_flutter_core.dart';

class GetPosterStateSucess extends BaseState {
  final bool isLoading;
  final ImageModel? imageModel;
  GetPosterStateSucess({this.isLoading = false, this.imageModel});
  @override
  List<Object> get props => [imageModel ?? '', isLoading];

  @override
  String toString() {
    // TODO: implement toString
    return 'ImageModel: $imageModel, $isLoading';
  }

  GetPosterStateSucess copyWith({ImageModel? imageModel, bool? isLoading}) =>
      GetPosterStateSucess(
          imageModel: imageModel ?? this.imageModel,
          isLoading: isLoading ?? this.isLoading);
}
