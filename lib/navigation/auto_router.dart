import 'package:auto_route/auto_route.dart';
import 'package:mobyte_scbteamchallenge/presentation/pages/bottom_bar/bottom_pages/stock_exchange_tabs/sell/select_currency_pay_page.dart';
import 'package:mobyte_scbteamchallenge/presentation/pages/bottom_bar/bottom_pages/stock_exchange_tabs/sell/sell.dart';
import 'package:mobyte_scbteamchallenge/presentation/pages/bottom_bar/bottombar.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      page: BottomHome,
      initial: true,
    ),
     AutoRoute(
      page: SelectCurrencyPayPage,
    ),
  ],
)
class $AppRouter {}
