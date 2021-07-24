import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smart_shopping_assistant/intro/data/repositories/intro_repository_impl.dart';
import 'package:smart_shopping_assistant/intro/domain/repositories/intro_repository.dart';

class GlobalBindings extends Bindings {
  @override
  Future<void> dependencies() async {
    // backend stuff
    final SharedPreferences sharedPreferences = Get.put(await SharedPreferences.getInstance(), permanent: true);

    // repositories
    Get.put(IntroRepositoryImpl(sharedPreferences) as IntroRepository); // need to cast to interface
  }
}
