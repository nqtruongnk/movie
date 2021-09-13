import 'package:teq_flutter_core/teq_flutter_core.dart';

class GetPosterEventStart extends BaseEvent {
  final String movieId;
  GetPosterEventStart({required this.movieId});

  @override
  List<Object> get props => [movieId];
}
