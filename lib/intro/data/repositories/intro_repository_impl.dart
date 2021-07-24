import 'package:shared_preferences/shared_preferences.dart';

import '../../domain/repositories/intro_repository.dart';

class IntroRepositoryImpl implements IntroRepository {
  static const _keyShowIntro = 'showIntro';

  final SharedPreferences _sharedPreferences;

  IntroRepositoryImpl(this._sharedPreferences);

  @override
  bool isNeededToBeShown() {
    return _sharedPreferences.getBool(_keyShowIntro) != false;
  }

  @override
  void changeToNotBeShownAgain() {
    _sharedPreferences.setBool(_keyShowIntro, false);
  }
}
