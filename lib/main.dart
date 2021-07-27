import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'core/domain/entity/theme_data_values.dart';
import 'core/domain/repository/theme_data_repository.dart';
import 'dependency_injection.dart';
import 'i18n/application_translations.dart';
import 'i18n/constants.dart';
import 'routing.dart';
import 'styles.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await GlobalBindings().dependencies();

  runApp(GetMaterialApp(
      translations: await initTranslations(),
      locale: Get.deviceLocale,
      fallbackLocale: DEFAULT_LOCALE,
      theme: Get.find<ThemeDataRepository>().fetchUserTheme() == ThemeDataValue.light
          ? AppThemeTemplates.lightTheme
          : AppThemeTemplates.darkTheme,
      getPages: AppPages.routes,
      onUnknownRoute: (settings) => GetPageRoute(settings: settings.copyWith(name: AppRoutes.ERROR))));
}
