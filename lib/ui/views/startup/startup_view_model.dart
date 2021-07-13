import 'package:flutter/material.dart';
import 'package:funvas_app/app/core/custom_base_view_model.dart';
import 'package:funvas_app/app/router/router.dart';
import 'package:funvas_app/app/services/router_service.dart';

class StartupViewModel extends CustomBaseViewModel {
  final RouterService _routerService = RouterService();

  Future<void> init() async {
    WidgetsBinding.instance!.addPostFrameCallback((Duration duration) async {
      await navigateToHomeView();
    });
  }

  Future navigateToHomeView() async {
    await _routerService.router.push(
      HomeRoute(),
    );
  }
}
