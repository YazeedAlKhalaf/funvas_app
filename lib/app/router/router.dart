import 'package:auto_route/auto_route.dart';

import 'package:funvas_app/ui/views/home/home_view.dart';
import 'package:funvas_app/ui/views/one/one_view.dart';
import 'package:funvas_app/ui/views/startup/startup_view.dart';
import 'package:funvas_app/ui/views/two/two_view.dart';

export './router.gr.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: "View,Route",
  routes: <AutoRoute>[
    AdaptiveRoute(page: StartupView, initial: true),
    AdaptiveRoute(page: HomeView),
    AdaptiveRoute(page: OneView),
    AdaptiveRoute(page: TwoView),
  ],
)
class $FunvasAppRouter {}
