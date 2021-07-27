import 'package:get/get.dart';

import 'authentication/presentation/pages/login_page.dart';
import 'authentication/presentation/pages/register_page.dart';
import 'core/presentation/pages/error_page.dart';
import 'core/presentation/pages/landing_page.dart';
import 'intro/intro_routing_middleware.dart';
import 'intro/presentation/pages/intro_page.dart';

class AppPages {
  AppPages._();

  static final GetPage errorRoute = GetPage(name: AppRoutes.ERROR, page: () => ErrorPage());

  static final routes = [
    errorRoute,

    GetPage(name: AppRoutes.LOGIN, page: () => LoginPage()),

    GetPage(name: AppRoutes.REGISTER, page: () => RegisterPage()),

    GetPage(name: AppRoutes.INTRO, page: () => IntroPage()),

    GetPage(name: AppRoutes.ROOT, page: () => LandingPage(), middlewares: [IntroRoutingMiddleware(Get.find())], children: []),
    // GetPage(
    //   name: '/',
    //   page: () => RootView(),
    //   binding: RootBinding(),
    //   participatesInRootNavigator: true,
    //   preventDuplicates: true,
    //   children: [
    //     GetPage(
    //       middlewares: [
    //         //only enter this route when not authed
    //         EnsureNotAuthedMiddleware(),
    //       ],
    //       participatesInRootNavigator: false,
    //       name: _Paths.LOGIN,
    //       page: () => LoginView(),
    //       binding: LoginBinding(),
    //     ),
    //     GetPage(
    //       participatesInRootNavigator: false,
    //       preventDuplicates: true,
    //       name: _Paths.HOME,
    //       page: () => HomeView(),
    //       bindings: [
    //         HomeBinding(),
    //       ],
    //       title: null,
    //       children: [
    //         GetPage(
    //           middlewares: [
    //             //only enter this route when authed
    //             EnsureAuthMiddleware(),
    //           ],
    //           name: _Paths.PROFILE,
    //           page: () => ProfileView(),
    //           title: 'Profile',
    //           transition: Transition.size,
    //           binding: ProfileBinding(),
    //         ),
    //         GetPage(
    //           name: _Paths.PRODUCTS,
    //           page: () => ProductsView(),
    //           title: 'Products',
    //           transition: Transition.zoom,
    //           binding: ProductsBinding(),
    //           children: [
    //             GetPage(
    //               name: _Paths.PRODUCT_DETAILS,
    //               page: () => ProductDetailsView(),
    //               binding: ProductDetailsBinding(),
    //               middlewares: [
    //                 //only enter this route when authed
    //                 EnsureAuthMiddleware(),
    //               ],
    //             ),
    //           ],
    //         ),
    //       ],
    //     ),
    //     GetPage(
    //       participatesInRootNavigator: true,
    //       name: _Paths.SETTINGS,
    //       page: () => SettingsView(),
    //       binding: SettingsBinding(),
    //     ),
    //   ],
    // ),
  ];
}

abstract class AppRoutes {
  AppRoutes._();

  static const ROOT = _Paths.ROOT;
  static const ERROR = _Paths.ERROR;

  static const INTRO = _Paths.INTRO;

  static const LOGIN = _Paths.LOGIN;
  static const REGISTER = _Paths.REGISTER;

  // static const PROFILE = _Paths.ROOT + _Paths.PROFILE;

  // static const SETTINGS = _Paths.SETTINGS;

  static String LOGIN_THEN(String afterSuccessfulLogin) => '$LOGIN?then=${Uri.encodeQueryComponent(afterSuccessfulLogin)}';

// static const PRODUCTS = _Paths.HOME + _Paths.PRODUCTS;
// static String PRODUCT_DETAILS(String productId) => '$PRODUCTS/$productId';
//
}

abstract class _Paths {
  static const ROOT = '/';

  static const ERROR = '/error';

  static const LOGIN = '/login';
  static const REGISTER = '/register';
  static const INTRO = '/intro';

  static const PROFILE = '/profile';
  static const SETTINGS = '/settings';

  // static const PRODUCTS = '/products';
  static const PRODUCT_DETAILS = '/:productId';
}
