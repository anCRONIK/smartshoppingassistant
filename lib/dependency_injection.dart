import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'core/data/repository/theme_data_repository_impl.dart';
import 'core/domain/repository/theme_data_repository.dart';
import 'intro/data/repositories/intro_repository_impl.dart';
import 'intro/domain/repositories/intro_repository.dart';

class GlobalBindings extends Bindings {
  @override
  Future<void> dependencies() async {
    // backend stuff
    final SharedPreferences sharedPreferences = Get.put(await SharedPreferences.getInstance(), permanent: true);

    // repositories
    // need to cast to interface
    Get.put(IntroRepositoryImpl(sharedPreferences) as IntroRepository);
    Get.put(ThemeDataRepositoryImpl(sharedPreferences) as ThemeDataRepository);
  }
}
