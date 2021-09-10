import 'package:get_it/get_it.dart';
import 'package:research_rvp/utils/preference_util.dart';

GetIt locator = GetIt.instance;
void setupLocator() async {
  PreferenceUtils.init();
}
