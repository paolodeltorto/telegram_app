import 'package:auto_route/auto_route.dart';
import 'package:telegram_app/pages/home_page.dart';
import 'package:telegram_app/pages/main_page.dart';
import 'package:telegram_app/pages/sign_in_page.dart';
import 'package:telegram_app/pages/welcom_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  preferRelativeImports: false,
  routes: <AutoRoute>[
    AutoRoute(page: MainPage, initial: true),
    AutoRoute(page: SignInPage),
    AutoRoute(page: HomePage),
    AutoRoute(page: WelcomePage),
  ],
)
class $AppRouter {}
