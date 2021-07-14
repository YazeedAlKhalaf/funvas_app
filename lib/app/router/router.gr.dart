// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;
import 'package:funvas_app/ui/views/home/home_view.dart' as _i4;
import 'package:funvas_app/ui/views/one/one_view.dart' as _i5;
import 'package:funvas_app/ui/views/startup/startup_view.dart' as _i3;
import 'package:funvas_app/ui/views/two/two_view.dart' as _i6;

class FunvasAppRouter extends _i1.RootStackRouter {
  FunvasAppRouter([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    StartupRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i3.StartupView();
        }),
    HomeRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i4.HomeView();
        }),
    OneRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i5.OneView();
        }),
    TwoRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i6.TwoView();
        })
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(StartupRoute.name, path: '/'),
        _i1.RouteConfig(HomeRoute.name, path: '/home-view'),
        _i1.RouteConfig(OneRoute.name, path: '/one-view'),
        _i1.RouteConfig(TwoRoute.name, path: '/two-view')
      ];
}

class StartupRoute extends _i1.PageRouteInfo {
  const StartupRoute() : super(name, path: '/');

  static const String name = 'StartupRoute';
}

class HomeRoute extends _i1.PageRouteInfo {
  const HomeRoute() : super(name, path: '/home-view');

  static const String name = 'HomeRoute';
}

class OneRoute extends _i1.PageRouteInfo {
  const OneRoute() : super(name, path: '/one-view');

  static const String name = 'OneRoute';
}

class TwoRoute extends _i1.PageRouteInfo {
  const TwoRoute() : super(name, path: '/two-view');

  static const String name = 'TwoRoute';
}
