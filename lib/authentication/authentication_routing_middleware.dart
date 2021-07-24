import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthenticationRoutingMiddleware extends GetMiddleware {
  @override
  RouteSettings? redirect(String? route) {
    //FIXME authed user should never access register and login pages
    //FIXME not authed user should never access anything that is not register or login page
    return super.redirect(route);
  }
}
