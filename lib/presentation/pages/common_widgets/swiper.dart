import 'package:flutter/material.dart';
import 'package:mobyte_scbteamchallenge/presentation/pages/onboarding/first_onboarding.dart';
import 'package:mobyte_scbteamchallenge/presentation/pages/onboarding/onboarding_second.dart';
import 'package:mobyte_scbteamchallenge/presentation/pages/onboarding/onboarding_therd.dart';

class Swiper extends StatefulWidget {
  const Swiper({Key? key}) : super(key: key);

  @override
  State<Swiper> createState() => _SwiperState();
}

class _SwiperState extends State<Swiper> {
  final PageController _pageController = PageController(initialPage: 0);
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  PageView(
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
                ThirdOnboarding(),
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
            //   )
    );
  }
}
