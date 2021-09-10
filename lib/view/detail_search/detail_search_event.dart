import 'package:teq_flutter_core/teq_flutter_core.dart';

class SearchEventFilter extends BaseEvent {
  final String search;
  SearchEventFilter({this.search = ''});
}
