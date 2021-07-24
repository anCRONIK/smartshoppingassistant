import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'dependency_injection.dart';
import 'i18n/application_translations.dart';
import 'i18n/constants.dart';
import 'routing.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await GlobalBindings().dependencies();

  runApp(GetMaterialApp(
      translations: await initTranslations(),
      locale: Get.deviceLocale,
      fallbackLocale: DEFAULT_LOCALE,
      getPages: AppPages.routes,
      onUnknownRoute: (settings) => GetPageRoute(settings: settings.copyWith(name: AppRoutes.ERROR))));
}
