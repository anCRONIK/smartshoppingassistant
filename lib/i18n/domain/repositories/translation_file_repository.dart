import 'dart:ui';

abstract class TranslationFileRepository {
  Future<Map> loadTranslationFileAsMap(Locale locale);
}
