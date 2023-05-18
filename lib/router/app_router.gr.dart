// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:firebase_auth/firebase_auth.dart' as _i7;
import 'package:flutter/material.dart' as _i6;
import 'package:telegram_app/pages/home_page.dart' as _i3;
import 'package:telegram_app/pages/main_page.dart' as _i1;
import 'package:telegram_app/pages/sign_in_page.dart' as _i2;
import 'package:telegram_app/pages/welcom_page.dart' as _i4;

class AppRouter extends _i5.RootStackRouter {
  AppRouter([_i6.GlobalKey<_i6.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    MainRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.MainPage(),
      );
    },
    SignInRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.SignInPage(),
      );
    },
    HomeRoute.name: (routeData) {
      final args = routeData.argsAs<HomeRouteArgs>();
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i3.HomePage(
          user: args.user,
          key: args.key,
        ),
      );
    },
    WelcomeRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.WelcomePage(),
      );
    },
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig(
          MainRoute.name,
          path: '/',
        ),
        _i5.RouteConfig(
          SignInRoute.name,
          path: '/sign-in-page',
        ),
        _i5.RouteConfig(
          HomeRoute.name,
          path: '/home-page',
        ),
        _i5.RouteConfig(
          WelcomeRoute.name,
          path: '/welcome-page',
        ),
      ];
}

/// generated route for
/// [_i1.MainPage]
class MainRoute extends _i5.PageRouteInfo<void> {
  const MainRoute()
      : super(
          MainRoute.name,
          path: '/',
        );

  static const String name = 'MainRoute';
}

/// generated route for
/// [_i2.SignInPage]
class SignInRoute extends _i5.PageRouteInfo<void> {
  const SignInRoute()
      : super(
          SignInRoute.name,
          path: '/sign-in-page',
        );

  static const String name = 'SignInRoute';
}

/// generated route for
/// [_i3.HomePage]
class HomeRoute extends _i5.PageRouteInfo<HomeRouteArgs> {
  HomeRoute({
    required _i7.User user,
    _i6.Key? key,
  }) : super(
          HomeRoute.name,
          path: '/home-page',
          args: HomeRouteArgs(
            user: user,
            key: key,
          ),
        );

  static const String name = 'HomeRoute';
}

class HomeRouteArgs {
  const HomeRouteArgs({
    required this.user,
    this.key,
  });

  final _i7.User user;

  final _i6.Key? key;

  @override
  String toString() {
    return 'HomeRouteArgs{user: $user, key: $key}';
  }
}

/// generated route for
/// [_i4.WelcomePage]
class WelcomeRoute extends _i5.PageRouteInfo<void> {
  const WelcomeRoute()
      : super(
          WelcomeRoute.name,
          path: '/welcome-page',
        );

  static const String name = 'WelcomeRoute';
}
