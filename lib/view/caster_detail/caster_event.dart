import 'package:teq_flutter_core/teq_flutter_core.dart';

// abstract class CasterEvent extends BaseEvent {}

// class CasterClickEvent extends CasterEvent {
//   final String id;
//   CasterClickEvent(this.id);

//   List<Object> get props => [id];
// }

class CasterClickEvent extends BaseEvent {
  final String id;
  CasterClickEvent(this.id);

  List<Object> get props => [id];
}
