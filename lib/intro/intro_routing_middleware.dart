import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../routing.dart';
import 'domain/repositories/intro_repository.dart';

class IntroRoutingMiddleware extends GetMiddleware {
  final IntroRepository _introRepository;

  IntroRoutingMiddleware(this._introRepository);

  @override
  RouteSettings? redirect(String? route) {
    if (_introRepository.isNeededToBeShown()) {
      return const RouteSettings(name: AppRoutes.INTRO);
    }
    return super.redirect(route);
  }
}
