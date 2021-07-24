import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smart_shopping_assistant/intro/data/repositories/intro_repository_impl.dart';

void main() {
  const _keyShowIntro = 'showIntro';

  late SharedPreferences sharedPreferences;
  late IntroRepositoryImpl repository;

  setUp(() async {
    sharedPreferences = await SharedPreferences.getInstance();
    repository = IntroRepositoryImpl(sharedPreferences);
  });

  tearDown(() async {
    await sharedPreferences.clear();
  });

  group('isNeededToBeShown', () {
    test('value does not exists in shared preferences, return true', () async {
      // arrange
      await sharedPreferences.remove(_keyShowIntro);
      // act
      var result = repository.isNeededToBeShown();
      // assert
      expect(result, true);
    });

    test('value in shared preferences is true, return true', () async {
      // arrange
      await sharedPreferences.setBool(_keyShowIntro, true);
      // act
      var result = repository.isNeededToBeShown();
      // assert
      expect(result, true);
    });

    test('value in shared preferences is false, return false', () async {
      // arrange
      await sharedPreferences.setBool(_keyShowIntro, false);
      // act
      var result = repository.isNeededToBeShown();
      // assert
      expect(result, false);
    });
  });

  group('changeToNotBeShownAgain', () {
    test('value does not exists in shared preferences, set value to false', () async {
      // arrange
      await sharedPreferences.remove(_keyShowIntro);
      // act
      var result = repository.changeToNotBeShownAgain();
      // assert
      expect(false, sharedPreferences.getBool(_keyShowIntro));
    });

    test('value in shared preferences is true, set value to false', () async {
      // arrange
      await sharedPreferences.setBool(_keyShowIntro, true);
      // act
      var result = repository.changeToNotBeShownAgain();
      // assert
      expect(sharedPreferences.getBool(_keyShowIntro), false);
    });
  });
}
