import 'package:auto_route/auto_route.dart';
import 'package:mobyte_scbteamchallenge/presentation/pages/bottom_bar/bottombar.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      page: BottomHome,
      initial: true,
    ),
  ],
)
class $AppRouter {}
