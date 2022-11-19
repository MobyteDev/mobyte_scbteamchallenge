import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobyte_scbteamchallenge/presentation/pages/common_widgets/swiper.dart';
import 'package:mobyte_scbteamchallenge/utils/notifier_color.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SpashScreen extends StatefulWidget {
  const SpashScreen({Key? key}) : super(key: key);

  @override
  State<SpashScreen> createState() => _SpashScreenState();
}

class _SpashScreenState extends State<SpashScreen> {
  late ColorNotifier notifier;
  getdarkmodepreviousstate() async {
    final prefs = await SharedPreferences.getInstance();
    bool? previusstate = prefs.getBool("setIsDark");
    if (previusstate == null) {
      notifier.setIsDark = false;
    } else {
      notifier.setIsDark = previusstate;
    }
  }

  @override
  void initState() {
    super.initState();
    getdarkmodepreviousstate();
    Timer(
      const Duration(seconds: 3),
      () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const Swiper(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    notifier = Provider.of<ColorNotifier>(context, listen: true);
    return Scaffold(
      backgroundColor: notifier.getbluecolor,
      body: Center(
        child: Text(
          "GoCrypto",
          style: TextStyle(
              color: notifier.getwihitecolor,
              fontFamily: 'Gilroy_Bold',
              fontSize: 35.sp),
        ),
      ),
    );
  }
}
