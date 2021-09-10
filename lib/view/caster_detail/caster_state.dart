import 'package:research_rvp/data/response/person_id/person_id.dart';
import 'package:teq_flutter_core/teq_flutter_core.dart';

class CasterStateSuccess extends BaseState {
  final bool isLoading;
  final PersonCaster? personCaster;
  CasterStateSuccess({this.isLoading = false, this.personCaster});
  @override
  List<Object> get props => [personCaster ?? '', isLoading];
  @override
  String toString() => 'PersonCaster: $personCaster';
  CasterStateSuccess copyWith({PersonCaster? personCaster, bool? isLoading}) =>
      CasterStateSuccess(
          personCaster: personCaster ?? this.personCaster,
          isLoading: isLoading ?? this.isLoading);
}
