import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:research_rvp/example/database.dart';

final userProvider =
    StateNotifierProvider<AddName, List<String>>((ref) => AddName());
Database database = Database();

class AddName extends StateNotifier<List<String>> {
  AddName() : super(database.dataName);
  Database _database = Database();
  addName(String name) {
    return state.add(name);
  }
}

final counterControler =
    StateNotifierProvider<CouterNotifier, int>((ref) => CouterNotifier());

class CouterNotifier extends StateNotifier<int> {
  CouterNotifier() : super(0);
  void add() {
    state += 1;
    print(state);
  }

  void subtract() {
    state -= 1;
  }
}
