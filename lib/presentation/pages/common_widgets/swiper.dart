import 'package:flutter/material.dart';
import 'package:mobyte_scbteamchallenge/presentation/pages/onboarding/first_onboarding.dart';
import 'package:mobyte_scbteamchallenge/presentation/pages/onboarding/onboarding_second.dart';
import 'package:mobyte_scbteamchallenge/presentation/pages/onboarding/onboarding_therd.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Swiper extends StatefulWidget {
  const Swiper({Key? key}) : super(key: key);

  @override
  State<Swiper> createState() => _SwiperState();
}

class _SwiperState extends State<Swiper> {
  final PageController _pageController = PageController(initialPage: 0);
  int currentPage = 0;

  getdarkmodepreviousstate() async {
    final prefs = await SharedPreferences.getInstance();
    bool? previusstate = prefs.getBool("setIsDark");
    // if (previusstate == null) {
    //   notifier.setIsDark = false;
    // } else {
    //   notifier.setIsDark = previusstate;
    // }
  }

  @override
  void initState() {
    super.initState();
    getdarkmodepreviousstate();
  }

  @override
  Widget build(BuildContext context) {
    // notifier = Provider.of<ColorNotifier>(context, listen: true);
    return Scaffold(
      body: Column(
        children: [
          Container(
            color: Colors.transparent,
            // height: height,
            child: PageView(
              physics: const ClampingScrollPhysics(),
              controller: _pageController,
              onPageChanged: (int page) {
                setState(() {
                  currentPage = page;
                });
              },
              scrollDirection: Axis.horizontal,
              children: const <Widget>[
                FirstOnboarding(),
                TherdOnboarding(),
                OnbondingSecond(),
              ],
            ),
            // ),Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: _buildPageIndicator(),
            // ),
            // Container(
            //   height: 50,
            //   child: PageView(
            //     physics: const ClampingScrollPhysics(),
            //     controller: _pageController,
            //     onPageChanged: (int page) {
            //       setState(() {
            //         _currentPage = page;
            //       });
            //     },
            //     scrollDirection: Axis.horizontal,
            //     children:   <Widget>[
            //
            //       oneonbonding(),
            //       onbondingtwo(),
            //     ],
            //
            //   ),
          ),
        ],
      ),
    );
  }
}
