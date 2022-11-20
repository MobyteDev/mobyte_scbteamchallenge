import 'package:flutter/material.dart';
import 'package:mobyte_scbteamchallenge/presentation/pages/bottom_bar/bottom_pages/home.dart';
import 'package:mobyte_scbteamchallenge/presentation/pages/bottom_bar/bottom_pages/profile/profile_page/profile.dart';

import 'package:mobyte_scbteamchallenge/presentation/pages/bottom_bar/bottom_pages/stock_exchange_tabs/selectstocks.dart';
import 'package:mobyte_scbteamchallenge/presentation/pages/bottom_bar/bottom_pages/stockexchange.dart';

import 'package:mobyte_scbteamchallenge/utils/notifier_color.dart';
import 'package:mobyte_scbteamchallenge/utils/sizes.dart';

class BottomHome extends StatefulWidget {
  const BottomHome({Key? key}) : super(key: key);

  @override
  _BottomHomeState createState() => _BottomHomeState();
}

class _BottomHomeState extends State<BottomHome> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return WillPopScope(
      onWillPop: () {
        Navigator.pop(context);
        return Future.value(false);
      },
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: context.colors.white,
          unselectedItemColor: context.colors.grey.withOpacity(.80),
          selectedLabelStyle: const TextStyle(fontFamily: 'Gilroy_Medium'),
          type: BottomNavigationBarType.fixed,
          selectedItemColor: context.colors.blue,
          unselectedLabelStyle: const TextStyle(fontFamily: 'Gilroy_Medium'),
          currentIndex: _selectedIndex,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          items: [
            BottomNavigationBarItem(
                backgroundColor: context.colors.white,
                icon: Image.asset("assets/images/Home-Filled.png",
                    color: _selectedIndex == 0
                        ? context.colors.blue
                        : context.colors.grey,
                    height: height / 35),
                label: ''),
            BottomNavigationBarItem(
                backgroundColor: context.colors.white,
                icon: Image.asset("assets/images/Portfolio-outline.png",
                    color: _selectedIndex == 1
                        ? context.colors.blue
                        : context.colors.grey,
                    height: height / 35),
                label: ''),
            BottomNavigationBarItem(
                backgroundColor: context.colors.white,
                icon: Image.asset("assets/images/exchange.png",
                    color: _selectedIndex == 2
                        ? context.colors.blue
                        : context.colors.grey,
                    height: height / 35),
                label: ''),
            BottomNavigationBarItem(
              backgroundColor: context.colors.white,
              icon: Image.asset("assets/images/User-outline.png",
                  color: _selectedIndex == 3
                      ? context.colors.blue
                      : context.colors.grey,
                  height: height / 35),
              label: '',
            ),
          ],
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
        ),
        body: Stack(
          children: [
            _buildOffstageNavigator(0),
            _buildOffstageNavigator(1),
            _buildOffstageNavigator(2),
            _buildOffstageNavigator(3),
          ],
        ),
      ),
    );
  }

  Map<String, WidgetBuilder> _routeBuilders(BuildContext context, int index) {
    return {
      '/': (context) {
        return [
          const Home(),
          const SelectStocks(),
          const StockExchange(),
          const Profile(),
        ].elementAt(index);
      },
    };
  }

  Widget _buildOffstageNavigator(int index) {
    var routeBuilders = _routeBuilders(context, index);

    return Offstage(
      offstage: _selectedIndex != index,
      child: Navigator(
        onGenerateRoute: (routeSettings) {
          return MaterialPageRoute(
            builder: (context) => routeBuilders[routeSettings.name]!(context),
          );
        },
      ),
    );
  }
}
