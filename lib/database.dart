import 'package:flutter_riverpod/flutter_riverpod.dart';

final databaseProvider = Provider<Database>((ref) => Database());

class Database {
  List<String> dataName = ['Trương', 'Trong'];
  getUserData() {
    return Future.delayed(Duration(seconds: 3), () {
      return dataName;
    });
  }

  late int fakeDatabase;

  Future<void> initDatabase() async {
    fakeDatabase = 0;
  }

  Future<int> increment() async {
    return Future.delayed(Duration(seconds: 3), () {
      return fakeDatabase += 1;
    });
  }

  Future<int> decrement() async {
    return Future.delayed(Duration(seconds: 3), () {
      return fakeDatabase += 1;
    });
  }
}
