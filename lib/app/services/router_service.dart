import "package:funvas_app/app/router/router.dart";

class RouterService {
  RouterService._internal();
  static RouterService _singleton = RouterService._internal();
  factory RouterService() => _singleton;

  final FunvasAppRouter router = FunvasAppRouter();
}
