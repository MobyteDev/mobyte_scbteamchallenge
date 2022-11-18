import 'package:auto_route/auto_route.dart';
import 'package:mobyte_scbteamchallenge/presentation/pages/main_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      page: MainPage,
      initial: true,
    ),
  ],
)
class $AppRouter {}
