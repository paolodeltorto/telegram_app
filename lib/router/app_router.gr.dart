// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:firebase_auth/firebase_auth.dart' as _i5;
import 'package:flutter/material.dart' as _i6;
import 'package:telegram_app/pages/home_page.dart' as _i1;
import 'package:telegram_app/pages/main_page.dart' as _i2;
import 'package:telegram_app/pages/welcom_page.dart' as _i3;

abstract class $AppRouter extends _i4.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    Home.name: (routeData) {
      final args = routeData.argsAs<HomeArgs>();
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.HomePage(
          user: args.user,
          key: args.key,
        ),
      );
    },
    Main.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.MainPage(),
      );
    },
    Welcome.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.WelcomePage(),
      );
    },
  };
}

/// generated route for
/// [_i1.HomePage]
class Home extends _i4.PageRouteInfo<HomeArgs> {
  Home({
    required _i5.User user,
    _i6.Key? key,
    List<_i4.PageRouteInfo>? children,
  }) : super(
          Home.name,
          args: HomeArgs(
            user: user,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'Home';

  static const _i4.PageInfo<HomeArgs> page = _i4.PageInfo<HomeArgs>(name);
}

class HomeArgs {
  const HomeArgs({
    required this.user,
    this.key,
  });

  final _i5.User user;

  final _i6.Key? key;

  @override
  String toString() {
    return 'HomeArgs{user: $user, key: $key}';
  }
}

/// generated route for
/// [_i2.MainPage]
class Main extends _i4.PageRouteInfo<void> {
  const Main({List<_i4.PageRouteInfo>? children})
      : super(
          Main.name,
          initialChildren: children,
        );

  static const String name = 'Main';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}

/// generated route for
/// [_i3.WelcomePage]
class Welcome extends _i4.PageRouteInfo<void> {
  const Welcome({List<_i4.PageRouteInfo>? children})
      : super(
          Welcome.name,
          initialChildren: children,
        );

  static const String name = 'Welcome';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}
