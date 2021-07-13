import 'package:funvas_app/app/core/custom_base_view_model.dart';
import 'package:funvas_app/app/router/router.dart';
import 'package:funvas_app/app/services/router_service.dart';

class HomeViewModel extends CustomBaseViewModel {
  final RouterService _routerService = RouterService();
  Future<void> init() async {}

  Future<void> navigateToOneView() async {
    await _routerService.router.push(
      OneRoute(),
    );
  }
}
