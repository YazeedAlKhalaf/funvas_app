import 'package:flutter/material.dart';
import 'package:funvas_app/app/services/router_service.dart';

class FunvasAppApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final RouterService _routerService = RouterService();

    return MaterialApp.router(
      title: "FunvasApp",
      routeInformationParser: _routerService.router.defaultRouteParser(),
      routerDelegate: _routerService.router.delegate(),
      theme: ThemeData(
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
    );
  }
}
